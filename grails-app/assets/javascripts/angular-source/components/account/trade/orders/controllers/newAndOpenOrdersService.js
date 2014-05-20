'use strict';

angular.module('blancrockExchangeApp').service('newAndOpenOrdersService', [
    '$resource', function ($resource) {
        return $resource('/order/:id', {id: '@id'}, {

        });
    } ]);