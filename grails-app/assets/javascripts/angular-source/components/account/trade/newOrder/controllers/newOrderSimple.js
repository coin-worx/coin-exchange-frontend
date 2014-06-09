//=require angular-source/components/account/trade/newOrder/newOrder.module

'use strict';

angular.module('account.trade.newOrder').controller('NewOrderSimpleController', [
  '$scope', '$location', 'orderDetailsService', function ($scope, $location, orderDetailsService) {

    $scope.submitted = false;
    $scope.parameters = {
      type: 'Buy',
      btnClass: 'btn-success',
      sign: '×',
      orderType: 'Limit',
      currency: {
        from: 'XBT',
        to: 'XRP'
      }
    };

    $scope.changeType = function (type) {
      console.log(type);
      $scope.parameters.type = type;
      $scope.submitted = false;

      if (type === 'Buy') {
        $scope.parameters.btnClass = 'btn-success';
        $scope.parameters.type = 'Buy';
      } else {
        $scope.parameters.btnClass = 'btn-danger';
        $scope.parameters.type = 'Sell';
      }
    };

    $scope.changeOrderType = function (type) {
      $scope.parameters.orderType = type;
      $scope.submitted = false;
    };

    $scope.checkParamsBeforeSubmit = function (form) {
      if (form.$invalid) {
        $scope.submitted = true;
      } else {
        orderDetailsService.setData({order: '', orderType: $scope.parameters.orderType, toSpend: '', toReceive: ''});
        $location.path('/account/trade/newOrder/details');
      }
    };

    $scope.$watchCollection('[volume, price]', function (newValues) {
      console.log(newValues);
      if (newValues) {
        console.log(newValues[0]);
        console.log(newValues[1]);
      }
      if (newValues && newValues[0] && newValues[1]) {
        console.log('changed');
        $scope.total = newValues[0] * newValues[1];
      } else {
        $scope.total = null;
      }
    });
  }]);