/**
 * Created by sohaiba on 5/24/14.
 */
//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade').service('ClosedOrdersService', [
    '$http', function ($http) {
        return {
            query: function () {
                return $http.get('api/queryClosedOrders');
            }
        };
    } ]);