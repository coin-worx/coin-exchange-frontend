//=require angular-source/components/account/trade/newOrder/newOrder.module

'use strict';

angular.module('account.trade.newOrder').service('NewOrderSimpleAsksService', [
    '$http', function ($http) {
        return {
            query: function () {
                return $http.get('api/newOrderSimpleAsks');
            }
        };
    }]);