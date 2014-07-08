//=require angular-source/components/marketData/ticker/ticker.module

'use strict';

angular.module('marketData.ticker').controller('TickerController', [
    '$scope', '$timeout', 'TickerService', function ($scope, $timeout, tickerService) {
        var loaded = false;
        var tradePrice = '';
        var todaysHigh = '';
        var todaysLow = '';
        var last24HourVolume = '';
        var todaysVolumeWeight = '';

       /* $scope.ticker.TradePrice = '';
        $scope.ticker.TodaysHigh = '';
        $scope.ticker.TodaysLow = '';
        $scope.ticker.Last24HourVolume = '';
        $scope.ticker.TodaysVolumeWeight = '';*/

        loadTickerInfo();
        intervalFunction();

        function intervalFunction(){
            $timeout(function() {
                loadTickerInfo();
                intervalFunction()
            }, 30000)
        };

        function loadTickerInfo(){
            tickerService.query()
                .success(function (data) {
                    //$scope.ticker = data;
                    updateValues(data);
                    $scope.loaded = true;
                }).error(function () {
                    $scope.ticker = [];
                });
        }

        // Checks if the current value of a variable is the same as different than the previous one
        function updateValues(data){
            var tradePriceArray = compareValues(data, tradePrice,'TradePrice');
            tradePrice = tradePriceArray[0];
            $scope.TradePrice = tradePriceArray[1];

            var todaysHighArray = compareValues(data, todaysHigh,'TodaysHigh');
            todaysHigh = todaysHighArray[0];
            $scope.TodaysHigh = todaysHighArray[1];

            var todaysLowArray = compareValues(data, todaysLow,'TodaysLow');
            todaysLow = todaysLowArray[0];
            $scope.TodaysLow = todaysLowArray[1];

            var last24HourVolumeArray = compareValues(data, last24HourVolume,'Last24HourVolume');
            last24HourVolume = last24HourVolumeArray[0];
            $scope.Last24HourVolume = last24HourVolumeArray[1];

            var todaysVolumeWeightArray = compareValues(data, todaysVolumeWeight,'TodaysVolumeWeight');
            todaysVolumeWeight = todaysVolumeWeightArray[0];
            $scope.TodaysVolumeWeight = todaysVolumeWeightArray[1];
        }

        // Compare the old values with the new ones
        function compareValues(data, tempVariable, dataTag){
           var scopeVariable = null;
           if(tempVariable === ''){
               tempVariable = data[dataTag];
               scopeVariable = {Value: data[dataTag], ChangeColor: true};
           }
           else if(tempVariable === data[dataTag]){
              scopeVariable = {Value: data[dataTag], ChangeColor: false};
           }
           else{
               scopeVariable = {Value: data[dataTag], ChangeColor: true};
           }
            return [tempVariable, scopeVariable];
        }

        $scope.deleteOrder = function (order) {
            var index = $scope.ticker.indexOf(order);
            $scope.ticker.splice(index, 1);
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
            $scope.totalItems = $scope.ticker.length;
            $scope.itemsPerPage = 9;
        }

        $scope.pageChanged = function () {
            recalculateMinAndMax();
            filterCollection();
        };

        function filterCollection() {
            $scope.filteredOrders = $scope.ticker.slice($scope.currentMinIndex, $scope.currentMaxIndex);
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
