'use strict';

angular.module('marketData.orderBook').controller('OrderBookController',
    ['$scope', function ($scope) {
        $scope.newAndOpenOrdersLoaded = false;
        $scope.closedOrdersLoaded = false;
        $scope.loaded = false;

        $scope.$watchCollection('[newAndOpenOrdersLoaded, closedOrdersLoaded]', function (newValues, oldValues) {
            if (newValues[0] && newValues[1]) {
                $scope.loaded = true;
            }
        });
    }]);