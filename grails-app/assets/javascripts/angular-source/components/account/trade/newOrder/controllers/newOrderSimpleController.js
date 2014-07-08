//=require ../services/orderDetailsService
//=require ../services/NewOrderSimpleAsksService
//=require ../services/NewOrderSimpleBidsService

'use strict';

angular.module('account.trade.newOrder').constant('constants', {
  type: {
    BUY: 'Buy',
    SELL: 'Sell'
  },
  orderType: {
    LIMIT: 'Limit',
    MARKET: 'Market'
  },
  btnClass: {
    SUCCESS: 'btn-success',
    DANGER: 'btn-danger'
  },
  sign: {
    MULT: '×',
    DIV: '÷'
  }
});

angular.module('account.trade.newOrder').controller('NewOrderSimpleController',
  [ '$scope', '$location', '$filter', 'constants', 'orderDetailsService', 'NewOrderSimpleBidsService', 'NewOrderSimpleAsksService',
    'CurrencyPairsService',
    function ($scope, $location, $filter, constants, orderDetailsService, bidsService, asksService, currencyPairsService) {

      $scope.submitted = false;
      $scope.bids = getBidsOrderBookUsingBidService();
      $scope.asks = getAsksOrderBookUsingAsksService();
      var isPriceSetManually = false;
      $scope.parameters = {
        type: constants.type.BUY,
        btnClass: constants.btnClass.SUCCESS,
        sign: constants.sign.MULT,
        orderType: constants.orderType.LIMIT,
        status: {
          isOpen: false
        },
        error: orderDetailsService.getError()
      };
      orderDetailsService.clearError();

      $scope.currency = {};
      currencyPairsService.query().success(function (currencies) {
        //@todo: update to get object instead of array
        var currenciesInstance = currencies[0];
        $scope.currency.to = currenciesInstance['BaseCurrency'];
        $scope.currency.from = currenciesInstance['QuoteCurrency'];
        $scope.currency.pair = currenciesInstance['CurrencyPairName'];
        $scope.currency.amount = $scope.currency.from;
        $scope.currency.price = $scope.currency.to;
        $scope.currency.total = $scope.currency.to;

      });

      $scope.changeType = function (type) {
        $scope.parameters.type = type;
        $scope.submitted = false;

        if (type === constants.type.BUY) {
          $scope.parameters.btnClass = constants.btnClass.SUCCESS;
          $scope.parameters.type = constants.type.BUY;
          if(!isPriceSetManually){
            setBestAskAsPrice();
          }
        } else {
          $scope.parameters.btnClass = constants.btnClass.DANGER;
          $scope.parameters.type = constants.type.SELL;
          if(!isPriceSetManually){
            setBestBidAsPrice();
          }
        }
      };

      $scope.changeCurrency = function (currency) {
        $scope.parameters.status.isOpen = false;
        if (currency !== $scope.currency.amount) {
          $scope.currency.amount = currency;
          $scope.currency.total = $scope.currency.total === $scope.currency.from ? $scope.currency.to : $scope.currency.from;
          $scope.parameters.sign = $scope.parameters.sign === constants.sign.MULT ? constants.sign.DIV : constants.sign.MULT;
        }
      };

      $scope.changeOrderType = function (type) {
        $scope.parameters.orderType = type;
        $scope.submitted = false;

        if (type === constants.orderType.MARKET) {
          $scope.price = null;
        }
      };

      $scope.checkParamsBeforeSubmit = function (form) {
        if (form.$invalid) {
          $scope.submitted = true;
        } else {
            if($scope.parameters.sign === constants.sign.MULT){
              orderDetailsService.setData(
                {
                  order: getOrderDetailsInfo(),
                  toSpend: {
                    currency: $scope.currency.total,
                    volume: $scope.total
                  },
                  toReceive: {
                    currency: $scope.currency.amount,
                    volume: $scope.volume
                  }
                });
            }
            else if($scope.parameters.sign === constants.sign.DIV){
                orderDetailsService.setData(
                    {
                        order: getOrderDetailsInfo(),
                        toSpend: {
                            currency: $scope.currency.amount,
                            volume: $scope.volume
                        },
                        toReceive: {
                            currency: $scope.currency.total,
                            volume: $scope.total
                        }
                    });
            }

          $location.path('/account/trade/newOrder/details');
        }
      };

      function getOrderDetailsInfo() {
          var volumeToSend = '';
          // If base currency is selected when the volume is entered, then send the volume entered by the user
          if($scope.parameters.sign === constants.sign.MULT){
             volumeToSend = $scope.volume;
          }
          // If quote currency is entered when the volume is entered, then we provide the [Price * Volume] value as the volume
          else if($scope.parameters.sign === constants.sign.DIV){
             volumeToSend = $scope.total;
          }
        return {
          type: $scope.parameters.type,
          volume: volumeToSend,
          pair: $scope.currency.pair,
          orderType: $scope.parameters.orderType,
          price: $scope.price
        };
      }

      $scope.$watchCollection('[volume, price]', function (newValues) {
        if ($scope.parameters.orderType === constants.orderType.LIMIT) {
            if($scope.parameters.sign === constants.sign.MULT){
                  if (newValues && newValues[0] && newValues[1]) {
                    $scope.total = newValues[0] * newValues[1];
                    $scope.total = parseFloat($scope.total.toFixed(5));

                  } else {
                    $scope.total = null;
                  }
            } else if($scope.parameters.sign === constants.sign.DIV){
                if (newValues && newValues[0] && newValues[1]) {
                    $scope.total = newValues[0] / newValues[1];
                } else {
                    $scope.total = null;
                }
            }
        } else if ($scope.parameters.orderType === constants.orderType.MARKET) {
          // Get the latest bids and asks to make the calculations for setting the price when sending the order
          getBidsOrderBookUsingBidService();
          getAsksOrderBookUsingAsksService();

          if($scope.parameters.sign === constants.sign.MULT){
            baseCurrencyMarketOrderUpdate(newValues);
          }
          else if($scope.parameters.sign === constants.sign.DIV){
            quoteCurrencyMarketOrderUpdate(newValues);
          }
        }
      });

        // Update the volume when the value in the total text box changes
        $scope.$watchCollection('[total]', function (newValues) {
            if ($scope.parameters.orderType === constants.orderType.LIMIT) {
                if($scope.parameters.sign === constants.sign.MULT){
                    $scope.volume = newValues[0] / $scope.price;
                    $scope.volume = parseFloat($scope.volume.toFixed(8));
                }
                else if($scope.parameters.sign === constants.sign.DIV){
                    $scope.volume = newValues[0] * $scope.price;
                    $scope.volume = parseFloat($scope.volume.toFixed(8));
                }
            };
        });

      $scope.$watch('parameters.sign', function (newSign) {
        if (newSign === constants.sign.MULT) {
          $scope.total = $scope.volume * $scope.price;
        } else {
          $scope.total = $scope.volume / $scope.price;
        }
      });

      function getBidsOrderBookUsingBidService() {
        if ($scope.bids === null || $scope.bids === undefined) {
          bidsService.query().success(function (bids) {
            $scope.bids = bids;
            setBestBidAsPrice();
          });
        }
      }

      function getAsksOrderBookUsingAsksService() {
        if ($scope.asks === null || $scope.asks === undefined) {
          asksService.query().success(function (asks) {
            $scope.asks = asks;
            setBestAskAsPrice();
          });
        }
      }

      // Update the variables when sending aa market order while the Quote currency is selected. E.g., in XBT/USD, USD is the Quote Currency,
      // XBT is the base currency
      function quoteCurrencyMarketOrderUpdate(newValues){
          if ($scope.parameters.type === constants.type.SELL){
              if($scope.bids != null && $scope.bids != undefined && $scope.bids.length > 0){
                  $scope.total = newValues[0] / $scope.bids[0]['BidPrice'];
                  // Fix the length of the decimal points of 'total' to 5
                  $scope.total = parseFloat($scope.total.toFixed(5));
              }
          }
          else if ($scope.parameters.type === constants.type.BUY){
              if($scope.asks != null && $scope.asks != undefined && $scope.asks.length > 0){
                  $scope.total = newValues[0] / $scope.asks[0]['AskPrice'];
                  // Fix the length of the decimal points of 'total' to 5
                  $scope.total = parseFloat($scope.total.toFixed(5));
              }
          }
      }

      // Update credentials for market order when the base currency is selected. E.g., in XBT/USD, USD is the Quote Currency,
        // XBT is the base currency
      function baseCurrencyMarketOrderUpdate(newValues) {
        var totalVolume = 0,
          totalCost = 0;

        if ($scope.parameters.type === constants.type.SELL) {
          // Variable that causes the circuit to break
          var breakLoop = false;
          angular.forEach($scope.bids, function (value, key) {
            if (!breakLoop) {
              var bidVolume = parseFloat(value['BidVolume']),
                bidPrice = parseFloat(value['BidPrice']);
              // If the total volume plus this iteration's volume is greater than the user entered volume, then
              // this is the last iteration
              if ((totalVolume + bidVolume) >= newValues[0]) {
                // Get the difference between the current total volume and the user entered volume
                var difference = (totalVolume + bidVolume) - newValues[0];
                // Only get that volume which is required for the cost that the user entered volume will have
                bidVolume -= difference;
                totalCost += bidPrice * bidVolume;
                $scope.total = totalCost;
                // Fix the length of the decimal points of 'total' to 5
                $scope.total = parseFloat($scope.total.toFixed(5));
                breakLoop = true;
              }
              // If the total volume plus the current volume is less than the user entered volume, then add the cost in
              // the total cost
              else if ((totalVolume + bidVolume) < newValues[0]) {
                totalCost += bidPrice * bidVolume;
                totalVolume += bidVolume;
              }
            }
          });
        } else if ($scope.parameters.type === constants.type.BUY) {
          // Variable that causes the circuit to break
          var breakLoop = false;

          angular.forEach($scope.asks, function (value, key) {
            if (!breakLoop) {
              var askVolume = parseFloat(value['AskVolume']),
                askPrice = parseFloat(value['AskPrice']);
              // If the total volume plus this iteration's volume is greater than the user entered volume, then
              // this is the last iteration
              if ((totalVolume + askVolume) >= newValues[0]) {
                // Get the difference between the current total volume and the user entered volume
                var difference = (totalVolume + askVolume) - newValues[0];
                // Only get that volume which is required for the cost that the user entered volume will have
                askVolume -= difference;
                totalCost += askPrice * askVolume;
                $scope.total = totalCost;
                // Fix the length of the decimal points of 'total' to 5
                $scope.total = parseFloat($scope.total.toFixed(5));
                breakLoop = true;
              }
              // If the total volume plus the current volume is less than the user entered volume, then add the cost in
              // the total cost
              else if ((totalVolume + askVolume) < newValues[0]) {
                totalCost += askPrice * askVolume;
                totalVolume += askVolume;
              }
            }
          });
        }
      }

      $scope.isOrderTypeMatch = function (orderType) {
        return $scope.parameters.orderType === orderType;
      };

      $scope.isTypeMatch = function (type) {
        return $scope.parameters.type === type;
      };

      //@todo: move to directive
      $scope.getAmountLabel = function () {
        var label = 'Amount of ';

        if ($scope.parameters.sign === constants.sign.MULT) {
          label = label + $scope.currency.from + ' to ' + $scope.parameters.type.toLowerCase();
        } else {
          label = label + $scope.currency.to + ' to ';

          if ($scope.parameters.type === constants.type.BUY) {
            label = label + 'spend';
          } else {
            label = label + 'receive';
          }
        }

        return label + '.';
      };

      //@todo: move to directive
      $scope.getTotalLabel = function () {
        var label = 'Estimated amount of ',
          postfix = '';

        if ($scope.parameters.sign === constants.sign.MULT) {
          label = label + $scope.currency.to;

          if ($scope.parameters.type === constants.type.BUY) {
            postfix = 'spend';
          } else {
            postfix = 'receive';
          }
        } else {
          label = label + $scope.currency.from;

          if ($scope.parameters.type === constants.type.SELL) {
            postfix = 'spend';
          } else {
            postfix = 'receive';
          }
        }

        label = label + ' to ' + postfix + '.';

        return label;
      };

        // Sets the best bid as the price when sending the order in case of a SELL limit order
        function setBestBidAsPrice(){
            if($scope.parameters.type === constants.type.SELL && $scope.parameters.orderType === constants.orderType.LIMIT){
                if($scope.price === null || $scope.price === undefined || $scope.price === 0){
                    if($scope.bids[0] != null || $scope.bids[0] != undefined){
                        $scope.price = $scope.bids[0]['BidPrice'];
                    }
                }
                else if($scope.price != 0){
                    if($scope.asks != null && $scope.asks != undefined){
                        if($scope.price === $scope.asks[0]['AskPrice']){
                            if($scope.bids[0] != null || $scope.bids[0] != undefined){
                                $scope.price = $scope.bids[0]['BidPrice'];
                            }
                        }
                    }
                }
            }
        }

        // Sets the best Ask as the price when sending the order in case of a BUY limit order
        function setBestAskAsPrice(){
            if($scope.parameters.type === constants.type.BUY && $scope.parameters.orderType === constants.orderType.LIMIT){
                if($scope.price === null || $scope.price === undefined || $scope.price === 0){
                    if($scope.asks[0] != null || $scope.asks[0] != undefined){
                        $scope.price = $scope.asks[0]['AskPrice'];
                    }
                }
                else if($scope.price != 0){
                    if($scope.bids != null && $scope.bids != undefined){
                        if($scope.price === $scope.bids[0]['BidPrice']){
                            if($scope.asks[0] != null || $scope.asks[0] != undefined){
                                $scope.price = $scope.asks[0]['AskPrice'];
                            }
                        }
                    }
                }
            }
        }

        $scope.priceSetManually = function (ev){
            if(!isPriceSetManually){
               isPriceSetManually = true;
            }
        }
    }]);