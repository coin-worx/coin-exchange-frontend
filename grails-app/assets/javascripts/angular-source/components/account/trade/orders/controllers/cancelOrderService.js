//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade.orders').service('CancelOrderService', [
    '$http', function ($http) {
        return {
            query: function (order) {
                return $http.post('api/cancelOrder', order);
            }
        };
    } ]);