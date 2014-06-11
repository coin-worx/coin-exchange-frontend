//=require ../services/orderDetailsService

'use strict';

angular.module('account.trade.newOrder').controller('NewOrderSimpleController',
  [ '$scope', '$location', '$filter', 'constants', 'orderDetailsService',
    function ($scope, $location, $filter, constants, orderDetailsService) {
      $scope.submitted = false;
      $scope.side = constants.side.BUY;
      $scope.btnClass = constants.btnClass.SUCCESS;
      $scope.sign = constants.sign.MULT;
      $scope.type = constants.type.LIMIT;
      $scope.sideDropdown = {
        isOpen: false
      };
      $scope.currency = {};

      orderDetailsService.getCurrencyPair()
        .success(function (response) {
          $scope.currency.base = response['baseCurrency'];
          $scope.currency.pair = response['currencyPairName'];
          $scope.currency.quote = response['quoteCurrency'];
          $scope.currency.amount = $scope.currency.quote;
          $scope.currency.price = $scope.currency.base;
          $scope.currency.total = $scope.currency.base;
        }).error(function (error) {
          console.log('error');
          console.log(error);
        });

      $scope.changeType = function (side) {
        $scope.side = side;
        $scope.submitted = false;

        if (side === constants.side.BUY) {
          $scope.btnClass = constants.btnClass.SUCCESS;
        } else {
          $scope.btnClass = constants.btnClass.DANGER;
        }
      };

      $scope.changeCurrency = function (currency) {
        $scope.status.isOpen = false;

        if (currency !== $scope.currency.amount) {
          $scope.currency.amount = currency;
          $scope.currency.total = $scope.currency.total === $scope.currency.quote ? $scope.currency.base : $scope.currency.quote;
          $scope.sign = $scope.sign === constants.sign.MULT ? constants.sign.DIV : constants.sign.MULT;
        }
      };

      $scope.changeOrderType = function (type) {
        $scope.type = type;
        $scope.submitted = false;

        if (type === constants.type.MARKET) {
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

      function getCurrencyToSpendInfo() {
        //todo: implement it
      }

      function getCurrencyToReceiveInfo () {
        var result;

        if ($scope.side === constants.side.BUY) {
          //todo: implement it
        }
      }

      function getOrderDetailsInfo() {
        return {
          side: $scope.side,
          volume: $scope.volume,
          pair: $scope.currency.pair,
          type: $scope.type,
          price: $scope.price
        };
      }

      $scope.isTypeMatch = function (type) {
        return $scope.type === type;
      };

      $scope.isSideMatch = function (side) {
        return $scope.side === side;
      };

      $scope.$watch('total', function (newTotal) {
        if (newTotal) {
          if (!$scope.price) {
            $scope.volume = null;
          } else {
            if ($scope.sign === constants.sign.MULT) {
              $scope.volume = newTotal / $scope.price;
            } else {
              $scope.volume = newTotal * $scope.price;
            }
          }
        } else {
          $scope.volume = null;
        }
      });

      $scope.$watch('volume', function (newVolume) {
        if (newVolume) {
          if (!$scope.price) {
            $scope.total = null;
          } else {
            if ($scope.sign === constants.sign.MULT) {
              $scope.total = newVolume * $scope.price;
            } else {
              $scope.total = newVolume / $scope.price;
            }
          }
        } else {
          $scope.total = null;
        }
      });

      $scope.$watch('price', function (newPrice) {
        if (newPrice) {
          if ($scope.volume) {
            if ($scope.sign === constants.sign.MULT) {
              $scope.total = newPrice * $scope.volume;
            } else {
              $scope.total = $scope.volume / newPrice;
            }
          } else if ($scope.total) {
            if ($scope.sign === constants.sign.MULT) {
              $scope.volume = $scope.total / newPrice;
            } else {
              $scope.volume = $scope.total * newPrice;
            }
          }
        }
      });

      $scope.$watch('sign', function (newSign) {
        if ($scope.volume) {
          if (newSign === constants.sign.MULT) {
            $scope.total = $scope.price * $scope.volume;
          } else {
            $scope.total = $scope.volume / $scope.price;
          }
        }
      });
    }
  ])
;