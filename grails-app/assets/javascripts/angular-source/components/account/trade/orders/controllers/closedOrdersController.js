//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade.orders').controller('ClosedOrdersController', [
    '$scope', 'ClosedOrdersService', function ($scope, closedOrdersService) {
        var loaded = false;

        closedOrdersService.query()
            .success(function (data) {
                updateCost(data);
                console.log(data);
                $scope.orders = data;
                loaded = true;
            }).error(function () {
                $scope.orders = [];
                loaded = true;
            });

       /* $scope.deleteOrder = function (order) {
            var index = $scope.orders.indexOf(order);
            $scope.orders.splice(index, 1);
        };*/

        $scope.isLoaded = function () {
            return !loaded;
        };

        $scope.sort = {
            predicate: 'OrderId',
            reverse: true
        };

        $scope.getSortingClass = function (columnName) {
            var className = 'sorting';

            if ($scope.sort.predicate === columnName) {
                $scope.sort.reverse ? className += '_asc' : className += '_desc';
            }

            return className;
        };

        function updateCost(orders) {
            orders.forEach(function (order) {
                order['Cost'] = +order['Volume'] * +order['Price'];
            });
        }

        $scope.updateSorting = function (columnName) {
            if ($scope.sort.predicate === columnName) {
                $scope.sort.reverse = !$scope.sort.reverse;
            } else {
                $scope.sort.predicate = columnName;
                $scope.sort.reverse = true;
            }
        };


    }]);