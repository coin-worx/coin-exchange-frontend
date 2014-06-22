//=require ../services/orderDetailsService

'use strict';

angular.module('account.trade.newOrder').controller('OrderDetailsController', ['$scope', '$location', 'orderDetailsService',
  function ($scope, $location, orderDetailsService) {
    console.log(orderDetailsService.getData());

    $scope.data = orderDetailsService.getData();

    $scope.order = {
      created: false
    };

    $scope.back = function () {
      $location.path('/account/trade/newOrder/simple');
    };

    $scope.submitOrder = function () {
      var result = orderDetailsService.createNewOrder()
        .success(function (response) {
          console.log('success and got response : ' + response);
          $scope.order.created = true;
          $scope.order.orderId = response['OrderId'];
        })
        .error(function (error) {
          console.log(error);
          orderDetailsService.setError(error);
        });
      console.log(result);
    };
  }]);