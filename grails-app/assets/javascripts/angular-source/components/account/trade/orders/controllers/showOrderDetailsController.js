//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade.orders').controller('ShowOrderDetailsController', [
    '$scope', '$location', 'ShowOrderDetailsService', 'OrdersSharedService', function ($scope, $location, showOrderDetailsService, ordersSharedService) {
        var orderId = ordersSharedService.getOrderIdOfOrder();

        showOrderDetailsService.query(orderId)
            .success(function (data) {
                $scope.orderDetails = data;
                showOrderDetailsService.tradesQuery(orderId)
                    .success(function(trades){
                        $scope.orderDetailsTrades = trades;
                        setPaginationParams();
                        recalculateMinAndMax();
                        filterCollection();
                    })
                $scope.detailsLoaded = true;
            }).error(function () {
                $scope.orderDetails = [];
            });

        $scope.goToUrl = function (path) {
            $location.path( path );
        };

        $scope.isLoaded = function () {
            return !loaded;
        };

        $scope.sort = {
            predicate: 'ExecutionDateTime',
            reverse: true
        };

        $scope.getSortingClass = function (columnName) {
            var className = 'sorting';

            if ($scope.sort.predicate === columnName) {
                $scope.sort.reverse ? className += '_asc' : className += '_desc';
            }

            return className;
        };

        $scope.updateSorting = function (columnName) {
            if ($scope.sort.predicate === columnName) {
                $scope.sort.reverse = !$scope.sort.reverse;
            } else {
                $scope.sort.predicate = columnName;
                $scope.sort.reverse = true;
            }
        };

        //Sorting params
        function setPaginationParams() {
            $scope.currentPage = 1;
            $scope.maxSize = 5;
            $scope.totalItems = $scope.orderDetailsTrades.length;
        }

        $scope.pageChanged = function () {
            recalculateMinAndMax();
            filterCollection();
        };

        function filterCollection() {
            $scope.filteredTradesDetails = $scope.orderDetailsTrades.slice($scope.currentMinIndex, $scope.currentMaxIndex);
        }

        function recalculateMinAndMax() {
            $scope.currentMinIndex = ($scope.currentPage - 1) * 10;
            $scope.currentMaxIndex = Math.min($scope.totalItems, $scope.currentPage * 10);
        }
    }]);
