//=require angular-source/components/currencyPairs/currencyPairs.module

'use strict';

angular.module('currencyPairs').controller('CurrencyPairsController', [
    '$scope', 'CurrencyPairsService', function ($scope, currencyPairsService) {
        var loaded = false;

        currencyPairsService.query()
            .success(function (data) {
                $scope.currencyPairs = data;
                $scope.loaded = true;

            }).error(function () {
                $scope.currencyPairs = [];
            });

        $scope.deleteOrder = function (order) {
            var index = $scope.currencyPairs.indexOf(order);
            $scope.currencyPairs.splice(index, 1);
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
    }]);
