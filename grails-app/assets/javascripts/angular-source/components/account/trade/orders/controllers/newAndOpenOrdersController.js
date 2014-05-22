//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade.orders').controller('NewAndOpenOrdersController', [
    '$scope', 'NewAndOpenOrdersService', function ($scope, newAndOpenOrdersService) {
        var loaded = false;

        newAndOpenOrdersService.query()
            .success(function (data) {
                updateCostRems(data);
                console.log(data);
                $scope.orders = data;
                loaded = true;
            }).error(function () {
                $scope.orders = [];
                loaded = true;
            });

        $scope.deleteOrder = function (order) {
            var index = $scope.orders.indexOf(order);
            $scope.orders.splice(index, 1);
        };

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

        function updateCostRems(orders) {
            orders.forEach(function (order) {
                order['CostRem'] = +order['OpenQuantity'] * +order['Price'];
            });
        }

        $scope.updateSorting = function (columnName) {
            if (this.sort.predicate === columnName) {
                this.sort.reverse = !$scope.sort.reverse;
            } else {
                this.sort.predicate = columnName;
                this.sort.reverse = true;
            }
        };


    }]);