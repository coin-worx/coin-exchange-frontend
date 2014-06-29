//=require angular-source/components/marketData/orderbook/orderbook.module

'use strict';

angular.module('marketData.orderBook').controller('AsksController', [
    '$scope', '$timeout', 'AsksService', function ($scope, $timeout, asksService) {
        var loaded = false;
        $scope.customStyle = {};
        $scope.previousOrderBook = [];

        function loadAsks(){
            asksService.query()
                .success(function (data) {
                    $scope.orderBook = data;
                    previousOrderBookCheck();
                    setPaginationParams();
                    recalculateMinAndMax();
                    filterCollection();

                    $scope.$parent.asksLoaded = true;
                    loaded = true;
                    $scope.previousOrderBook = $scope.orderBook;
                    //$scope.customStyle.style = {color : 'black'}

                }).error(function () {
                    $scope.orderBook = [];
                });
        };

        loadAsks();

        intervalFunction();

        function intervalFunction(){
            $timeout(function() {
                loadAsks();
                intervalFunction()
            }, 30000)
        };

        function previousOrderBookCheck(){
            if($scope.previousOrderBook.length > 0){
                for(var i = 0; i < $scope.orderBook.length; i++){
                    if($scope.previousOrderBook[i]['AskPrice'] != $scope.orderBook[i]['AskPrice'] ||
                        $scope.previousOrderBook[i]['AskVolume'] != $scope.orderBook[i]['AskVolume']){
                        $scope.orderBook[i] = {AskPrice: $scope.orderBook[i]['AskPrice'], AskVolume: $scope.orderBook[i]['AskVolume'],
                            changeColor: true};
                    }
                    else{
                        $scope.orderBook[i] = {AskPrice: $scope.orderBook[i]['AskPrice'], AskVolume: $scope.orderBook[i]['AskVolume'],
                            changeColor: false};
                    }
                }
            }
        }

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
            reverse: false
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
