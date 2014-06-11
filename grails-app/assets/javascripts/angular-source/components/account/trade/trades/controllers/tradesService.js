//=require angular-source/components/account/trade/trades/trades.module

'use strict';

angular.module('account.trade').service('TradesService', [
    '$http', function ($http) {
        return {
            query: function () {
                return $http.get('api/getTradeHistory');
            }
        };
    } ]);