//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade.orders').service('CancelOrderService', [
    '$http', function ($http) {
        return {
            query: function (data) {
                return $http.get('api/cancelOrder', data);
            }
        };
    } ]);