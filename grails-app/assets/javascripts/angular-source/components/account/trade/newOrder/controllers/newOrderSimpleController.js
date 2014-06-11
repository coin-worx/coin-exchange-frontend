//=require ../services/orderDetailsService

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
  '$scope', '$location', '$filter', 'constants', 'orderDetailsService', function ($scope, $location, $filter, constants, orderDetailsService) {

    $scope.submitted = false;
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
      if (newValues && newValues[0] && newValues[1]) {
        $scope.total = newValues[0] * newValues[1];
      } else {
        $scope.total = null;
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
     })*/
    ;
  }])
;