//=require angular-source/components/account/trade/newOrder/newOrder.module

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
      console.log(currency);
      $scope.parameters.status.isOpen = false;
      $scope.currency.amount = currency;
      $scope.currency.total = $scope.currency.total === $scope.currency.from ? $scope.currency.to : $scope.currency.from;
      $scope.parameters.sign = $scope.parameters.sign === constants.sign.MULT ? constants.sign.DIV : constants.sign.MULT;
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
            order: getOrderDetailsFirstLine(),
            orderType: $scope.parameters.orderType,
            toSpend: 'Estimated' + $scope.currency.from + ' to spend',
            toReceive: $scope.currency.from + ' to receive'
          });

        $location.path('/account/trade/newOrder/details');
      }
    };

    function getOrderDetailsFirstLine() {
      return $scope.parameters.type + ' ' + $scope.volume + ' ' + getCurrencyPair() + ' '
        + $scope.parameters.orderType + $scope.total;
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
  }]);