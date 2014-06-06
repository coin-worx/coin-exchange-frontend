//=require angular-source/components/marketData/orderbook/orderbook.module

'use strict';

angular.module('marketData.orderBook').service('NewAndOpenOrderBookService', [
    '$http', function ($http) {
        return {
            query: function () {
                return $http.get('api/queryOpenOrders');
            }
        };
    } ]);