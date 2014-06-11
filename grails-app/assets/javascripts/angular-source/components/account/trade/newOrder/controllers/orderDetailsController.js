//=require ../services/orderDetailsService

'use strict';

angular.module('account.trade.newOrder').controller('OrderDetailsController', ['$scope', '$location', 'orderDetailsService',
  function ($scope, $location, orderDetailsService) {

    orderDetailsService.getData().then(function (data) {
      if (!data) {
        $location.path('account/trade/newOrder/simple');
      } else {
        $scope.data = data;
      }
    });

    $scope.order = {
      created: false
    };

    $scope.backToNewSimpleOrder = function () {
      $location.path('/account/trade/newOrder/simple');
    };

    $scope.submitOrder = function () {
      var result = orderDetailsService.createNewOrder()
        .success(function (response) {
          console.log(response);
          $scope.order.created = true;
          $scope.order.orderId = response['OrderId'];
        })
        .error(function (error) {
          console.log("an error occurred");
          console.log(error);
          orderDetailsService.setError(error);
        });
    };
  }]);