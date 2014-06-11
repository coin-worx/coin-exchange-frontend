//=require angular-source/components/account/trade/overview/overview.module

'use strict';

angular.module('account.trade.overview').controller('OverviewController',
    ['$scope', function ($scope) {
        $scope.ratesLoaded = false;
        $scope.loaded = false;

        $scope.$watchCollection('[ratesLoaded]', function (newValues, oldValues) {
            if (newValues[0]) {
                $scope.loaded = true;
            }
        });
    }]);