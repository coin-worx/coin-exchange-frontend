//=require ../services/orderDetailsService
//=require ../../orders/controllers/orderSharedService

'use strict';

angular.module('account.trade.newOrder').controller('OrderDetailsController', ['$scope', '$location', 'orderDetailsService', 'OrdersSharedService',
  function ($scope, $location, orderDetailsService, ordersSharedService) {
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
      ordersSharedService.setOrderIdOfOrder(orderId);
      $location.path('/account/trade/showOrderDetails');
    };
  }]);