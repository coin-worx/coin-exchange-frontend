//=require angular-source/components/marketData/recentTrades/recentTrades.module

'use strict';

angular.module('marketData.recentTrades').controller('RecentTradesController', [
    '$scope', '$timeout', 'RecentTradesService', function ($scope, $timeout, recentTradesService) {
        var loaded = false;
        $scope.previousTrades = [];

        function loadRecentTrades(){
            recentTradesService.query()
                .success(function (data) {
                    $scope.trades = data;
                    previousTradesBookCheck()
                    setPaginationParams();

                    $scope.$parent.recentTradesLoaded = true;
                    loaded = true;

                    recalculateMinAndMax();
                    filterCollection();

                    $scope.previousTrades = $scope.trades;

                }).error(function () {
                    $scope.trades = [];
                });
        }

        loadRecentTrades();
        intervalFunction();

        function intervalFunction(){
            $timeout(function() {
                loadRecentTrades();
                intervalFunction()
            }, 30000)
        };

        function previousTradesBookCheck(){
            if($scope.previousTrades.length > 0){
                for(var i = 0; i < $scope.trades.length; i++){
                    if($scope.previousTrades[i]['Price'] != $scope.trades[i]['Price'] ||
                        $scope.previousTrades[i]['Volume'] != $scope.trades[i]['Volume']){
                        $scope.trades[i] = {Price: $scope.trades[i]['Price'], Volume: $scope.trades[i]['Volume'],
                            Time: $scope.trades[i]['Time'], ChangeColor: true};
                    }
                    else{
                        $scope.trades[i] = {Price: $scope.trades[i]['Price'], Volume: $scope.trades[i]['Volume'],
                            Time: $scope.trades[i]['Time'], ChangeColor: true};
                    }
                }
            }
        }

        $scope.deleteOrder = function (order) {
            var index = $scope.trades.indexOf(order);
            $scope.trades.splice(index, 1);
            recalculateMinAndMax();
            filterCollection();
        };

        $scope.isLoaded = function () {
            return !loaded;
        };

        $scope.sort = {
            predicate: 'Time',
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
            $scope.maxSize = 1;
            $scope.totalItems = $scope.trades.length;
        }

        $scope.pageChanged = function () {
            recalculateMinAndMax();
            filterCollection();
        };

        function filterCollection() {
            $scope.filteredTrades = $scope.trades.slice($scope.currentMinIndex, $scope.currentMaxIndex);
        }

        function recalculateMinAndMax() {
            $scope.currentMinIndex = ($scope.currentPage - 1) * 10;
            $scope.currentMaxIndex = Math.min($scope.totalItems, $scope.currentPage * 10);
        }

        $scope.setLabelStyles = function (label) {
            var className = 'label-';
            switch (label) {
                case 'PartiallyFilled':
                    className += 'important';
                    break;
                case 'Accepted':
                    className += 'success';
                    break;
                case 'Complete':
                    className += 'success';
                    break;

                default:
                    className += 'inverse';
            }

            return className;
        };
    }]);
