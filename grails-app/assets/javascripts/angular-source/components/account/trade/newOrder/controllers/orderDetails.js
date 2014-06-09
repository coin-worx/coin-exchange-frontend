//=require angular-source/components/account/trade/newOrder/newOrder.module

'use strict';

angular.module('account.trade.newOrder').controller('OrderDetailsController', ['$scope', 'OrderDetailsService',
  function ($scope, orderDetailsService) {
    $scope.data = orderDetailsService.getData();
  }]);