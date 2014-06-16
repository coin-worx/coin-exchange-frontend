//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade.orders').controller('ShowOrderDetailsController', [
    '$scope', '$location', 'ShowOrderDetailsService', 'OrdersSharedService', function ($scope, $location, showOrderDetailsService, ordersSharedService) {
        var loaded = false;

        var orderId = ordersSharedService.getOrderIdOfOrder();
        showOrderDetailsService.query(orderId)
            .success(function (data) {
                $scope.orderDetails = data;
                $scope.detailsLoaded = true;

                loaded = true;

            }).error(function () {
                $scope.orderDetails = [];
            });

        $scope.goToUrl = function (path) {
            $location.path( path );
        };
    }]);
