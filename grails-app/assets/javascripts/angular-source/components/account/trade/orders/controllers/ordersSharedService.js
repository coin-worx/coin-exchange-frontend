//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade.orders').service('OrdersSharedService', function() {
    var orderId = {
        orderId: ''
    };

    return {
        setOrderIdOfOrder: function(value) {
            orderId = {orderId: value};
        },
        getOrderIdOfOrder: function() {
            return orderId;
        }
    }
});