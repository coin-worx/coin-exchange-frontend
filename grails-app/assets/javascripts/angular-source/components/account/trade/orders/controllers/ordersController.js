//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade.orders').controller('OrdersController',
  ['$scope', function ($scope) {
    $scope.newAndOpenOrdersLoaded = false;
    $scope.closedOrdersLoaded = false;
    $scope.loaded = false;

    $scope.$watchCollection('[newAndOpenOrdersLoaded, closedOrdersLoaded]', function (newValues, oldValues) {
      if (newValues[0] && newValues[1]) {
        $scope.loaded = true;
      }
    });
  }]);