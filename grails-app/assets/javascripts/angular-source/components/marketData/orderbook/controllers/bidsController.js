//=require angular-source/components/marketData/orderbook/orderbook.module

'use strict';

angular.module('marketData.orderBook').controller('BidsController', [
    '$scope', '$timeout', 'BidsService', function ($scope, $timeout, bidsService) {
        var loaded = false
        $scope.customStyle = {};

        function loadBids(){
            bidsService.query()
                .success(function (data) {
                    $scope.orderBook = data;
                    setPaginationParams();
                    recalculateMinAndMax();
                    filterCollection();

                    $scope.$parent.bidsLoaded = true;
                    loaded = true;

                }).error(function () {
                    $scope.orderBook = [];
                });
        }

        loadBids();
        intervalFunction();

        function intervalFunction(){
            $timeout(function() {
                loadBids();
                intervalFunction()
            }, 10000)
        };

        function colorFade(userOptions) {
            // starting color, ending color, duration in ms
            var options = $.extend({
                start: "#0A2A0A",
                end: "#000000",
                time: 2000
            }, userOptions || {});
            $(this).css({
                backgroundColor: options.start
            }).animate({
                    backgroundColor: options.end
                }, options.time);
            return this;
        };

        $scope.deleteOrder = function (order) {
            var index = $scope.orderBook.indexOf(order);
            $scope.orderBook.splice(index, 1);
            recalculateMinAndMax();
            filterCollection();
        };

        $scope.isLoaded = function () {
            return !loaded;
        };

        $scope.sort = {
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
            $scope.totalItems = $scope.orderBook.length;
        }

        $scope.pageChanged = function () {
            recalculateMinAndMax();
            filterCollection();
        };

        function filterCollection() {
            $scope.filteredOrderBook = $scope.orderBook.slice($scope.currentMinIndex, $scope.currentMaxIndex);
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
