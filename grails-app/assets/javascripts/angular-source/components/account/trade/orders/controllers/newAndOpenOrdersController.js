'use strict';

angular.module('blancrockExchangeApp').controller('NewAndOpenOrdersController',
    ['$scope', 'newAndOpenOrdersService', function ($scope, newAndOpenOrdersService) {
        $scope.orders = newAndOpenOrdersService.query();
    } ]);