//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade.orders').service('ShowOrderDetailsService', [
    '$http', function ($http) {
        return {
            query: function (orderId) {
                return $http.post('api/showOrderDetails',orderId);
            }
        };
    } ]);