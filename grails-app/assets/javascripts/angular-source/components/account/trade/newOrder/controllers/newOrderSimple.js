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

angular.module('account.trade.newOrder').controller('NewOrderSimpleController', [
  '$scope', '$location', '$filter', 'constants', 'orderDetailsService', 'NewOrderSimpleBidsService', 'NewOrderSimpleAsksService', function ($scope, $location, $filter, constants, orderDetailsService, bidsService, asksService) {

    $scope.submitted = false;
    $scope.bids = null;
    $scope.asks = null;
    $scope.parameters = {
      type: constants.type.BUY,
      btnClass: constants.btnClass.SUCCESS,
      sign: constants.sign.MULT,
      orderType: constants.orderType.LIMIT,
      status: {
        isOpen: false
      }
    };

    $scope.currency = {
      from: 'XBT',
      to: 'USD'
    };

    $scope.currency.amount = $scope.currency.from;
    $scope.currency.price = $scope.currency.to;
    $scope.currency.total = $scope.currency.to;

    $scope.changeType = function (type) {
      console.log(type);
      $scope.parameters.type = type;
      $scope.submitted = false;

      if (type === constants.type.BUY) {
        $scope.parameters.btnClass = constants.btnClass.SUCCESS;
        $scope.parameters.type = constants.type.BUY;
      } else {
        $scope.parameters.btnClass = constants.btnClass.DANGER;
        $scope.parameters.type = constants.type.SELL;
      }
    };

    $scope.changeCurrency = function (currency) {
      console.log(currency);
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

        $location.path('/account/trade/newOrder/details');
      }
    };

    function getOrderDetailsInfo() {
      return {
        type: $scope.parameters.type,
        volume: $scope.volume,
        pair: getCurrencyPair(),
        orderType: $scope.parameters.orderType,
        price: $scope.price
      };
    }

    function getCurrencyPair() {
      return $scope.currency.from + $scope.currency.to;
    }

    $scope.$watchCollection('[volume, price]', function (newValues) {
        if($scope.parameters.orderType == constants.orderType.LIMIT){
          if (newValues && newValues[0] && newValues[1]) {
            $scope.total = newValues[0] * newValues[1];
          } else {
            $scope.total = null;
          }
        }
        else if($scope.parameters.orderType == constants.orderType.MARKET){
            var totalVolume = 0;
            var totalCost = 0;
            // Get the bids order book using the bids service
            if($scope.bids ===  null){
                bidsService.query()
                    .success(function (data) {
                        $scope.bids = data;

                    }).error(function () {
                        $scope.bids = null;
                    });
            }
            // Get the asks order book using the asks service
            if($scope.asks ===  null){
                asksService.query()
                    .success(function (data) {
                        $scope.asks = data;

                    }).error(function () {
                        $scope.asks = null;
                    });
            }
            if($scope.parameters.type === constants.type.SELL){
                // Variable that causes the circuit to break
                var breakLoop = false;
                angular.forEach($scope.bids, function(value, key) {
                    if(!breakLoop){
                        var bidVolume = parseFloat(value.BidVolume);
                        var bidPrice = parseFloat(value.BidPrice);
                        // If the total volume plus this iteration's volume is greater than the user entered volume, then
                        // this is the last iteration
                        if((totalVolume + bidVolume) >= newValues[0]){
                            // Get the difference between the current total volume and the user entered volume
                            var difference = (totalVolume + bidVolume) - newValues[0];
                            // Only get that volume which is required for the cost that the user entered volume will have
                            bidVolume -= difference;
                            totalCost += bidPrice * bidVolume;
                            $scope.total = totalCost;
                            breakLoop = true;
                        }
                        // If the total volume plus the current volume is less than the user entered volume, then add the cost in
                        // the total cost
                        else if((totalVolume + bidVolume) < newValues[0]){
                            totalCost += bidPrice * bidVolume;
                            totalVolume += bidVolume;
                        }
                    }
                });
            }
            else if($scope.parameters.type === constants.type.BUY){
                // Variable that causes the circuit to break
                var breakLoop = false;
                angular.forEach($scope.asks, function(value, key) {
                    if(!breakLoop){
                        var askVolume = parseFloat(value.AskVolume);
                        var askPrice = parseFloat(value.AskPrice);
                        // If the total volume plus this iteration's volume is greater than the user entered volume, then
                        // this is the last iteration
                        if((totalVolume + askVolume) >= newValues[0]){
                            // Get the difference between the current total volume and the user entered volume
                            var difference = (totalVolume + askVolume) - newValues[0];
                            // Only get that volume which is required for the cost that the user entered volume will have
                            askVolume -= difference;
                            totalCost += askPrice * askVolume;
                            $scope.total = totalCost;
                            breakLoop = true;
                        }
                        // If the total volume plus the current volume is less than the user entered volume, then add the cost in
                        // the total cost
                        else if((totalVolume + askVolume) < newValues[0]){
                            totalCost += askPrice * askVolume;
                            totalVolume += askVolume;
                        }
                    }
                });
            }
        }
    });

    $scope.isOrderTypeMatch = function (orderType) {
      return $scope.parameters.orderType === orderType;
    };

    $scope.isTypeMatch = function (type) {
      return $scope.parameters.type === type;
    };

    //@todo: implement automatic updating of inputs
/*    $scope.$watch('total', function (newValue) {
      if (newValue) {
        if ($scope.parameters.sign === constants.sign.MULT) {
          if ($scope.price) {
            $scope.volume = newValue / $scope.price;
          } else if ($scope.volume) {
            $scope.price = newValue / $scope.volume;
          }
        }
      }
    })*/;
  }])
;