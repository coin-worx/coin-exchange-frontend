//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade').service('NewAndOpenOrdersService', [
    '$http', function ($http) {
        return {
            query: function () {
                return $http.get('api/queryOpenOrders');
            }
        };
    } ]);