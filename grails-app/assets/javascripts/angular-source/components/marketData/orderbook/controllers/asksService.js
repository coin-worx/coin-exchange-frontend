//=require angular-source/components/marketData/orderbook/orderbook.module

'use strict';

angular.module('marketData.orderBook').service('AsksService', [
    '$http', function ($http) {
        return {
            query: function () {
                return $http.get('api/getAsks');
            }
        };
    } ]);