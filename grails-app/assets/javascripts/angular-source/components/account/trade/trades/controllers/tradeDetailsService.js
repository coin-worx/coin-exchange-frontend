//=require angular-source/components/account/trade/trades/orders.module

'use strict';

angular.module('account.trade').service('TradeDetailService', [
    '$http', function ($http) {
        return {
            query: function (tradeId) {
                return $http.post('api/getTradeDetails', tradeId);
            }
        };
    } ]);