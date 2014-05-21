//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade.orders').controller('NewAndOpenOrdersController', [
    '$scope', 'NewAndOpenOrdersService', function ($scope, newAndOpenOrdersService) {
        $scope.orders = [];
        newAndOpenOrdersService.query()
            .success(function (data) {
                $scope.orders = data.result;
            }).error(function (data) {
                $scope.orders = [];
            });
    }]);