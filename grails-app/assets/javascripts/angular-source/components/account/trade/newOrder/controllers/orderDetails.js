//=require angular-source/components/account/trade/newOrder/newOrder.module

'use strict';

angular.module('account.trade.newOrder').controller('OrderDetailsController', ['$scope', '$location', 'OrderDetailsService',
  function ($scope, $location, orderDetailsService) {
    console.log(orderDetailsService.getData());

    $scope.data = orderDetailsService.getData();

    $scope.back = function () {
      $location.path('/account/trade/newOrder/simple');
    };

    $scope.submitOrder = function () {
      var result = orderDetailsService.createNewOrder();
      console.log(result);
    };
  }]);