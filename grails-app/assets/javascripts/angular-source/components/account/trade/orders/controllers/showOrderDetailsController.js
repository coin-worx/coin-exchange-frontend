//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade.orders').controller('ShowOrderDetailsController', [
    '$scope', '$location', '$routeParams', 'ShowOrderDetailsService', 'OrdersSharedService', 'TradesSharedService', function ($scope, $location, $routeParams, showOrderDetailsService, ordersSharedService, tradesSharedService) {
        var orderIdObject = '';

        loadOrderDetails();
        function loadOrderDetails(){
            var orderId = $routeParams.orderid;
            ordersSharedService.setOrderIdOfOrder(orderId);
            orderIdObject = ordersSharedService.getOrderIdOfOrder();
            showOrderDetailsService.query(orderIdObject)
                .success(function (data) {
                    $scope.orderDetails = data;
                    showOrderDetailsService.tradesQuery(orderIdObject)
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
        }

        $scope.goToUrl = function (path) {
            $location.path( path );
        };

        $scope.isLoaded = function () {
            return !loaded;
        };

        $scope.setTradeId = function (tradeId) {
            tradesSharedService.setTradeIdOfTrade(tradeId);
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

        $scope.setTradeIdAsUrlParameter = function(tradeId){
                          $scope.locationPath = '#/account/trade/tradeDetails?tradeid=' + tradeId;
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
