//=require angular-source/components/marketData/marketData.module

'use strict';

angular.module('marketData').controller('MarketDataController',
    ['$scope', function ($scope) {
        $scope.bidsLoaded = false;
        $scope.asksLoaded = false;
        $scope.recentTradesLoaded = false;
        $scope.loaded = false;

        $scope.$watchCollection('[bidsLoaded, asksLoaded, recentTradesLoaded]', function (newValues, oldValues) {
            if (newValues[0] && newValues[1] && newValues[2]) {
                $scope.loaded = true;
            }
        });
    }]);