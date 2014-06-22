//=require ../services/orderDetailsService

'use strict';

angular.module('account.trade.newOrder').controller('OrderDetailsController', ['$scope', '$location', 'orderDetailsService', 'OrderSharedService',
  function ($scope, $location, orderDetailsService, orderSharedService) {
    console.log(orderDetailsService.getData());

    $scope.data = orderDetailsService.getData();

    $scope.order = {
      created: false
    };

    $scope.back = function () {
      $location.path('/account/trade/newOrder/simple');
    };

    $scope.submitOrder = function () {
      orderDetailsService.createNewOrder()
        .success(function (response) {
          $scope.order.created = true;
          $scope.order.orderId = response['OrderId'];
        })
        .error(function (error) {
          console.log(error);
          orderDetailsService.setError(error);
          $location.path('/account/trade/newOrder/simple')
        });
    };

    $scope.setOrderId = function (orderId) {
      orderSharedService.setOrderIdOfOrder(orderId);
      $location.path('//account/trade/showOrderDetails');
    };
  }]);