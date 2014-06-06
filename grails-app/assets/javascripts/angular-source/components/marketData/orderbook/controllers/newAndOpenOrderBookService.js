//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('marketData.orderBook').service('NewAndOpenOrderBookService', [
    '$http', function ($http) {
        return {
            query: function () {
                return $http.get('api/queryOpenOrders');
            }
        };
    } ]);