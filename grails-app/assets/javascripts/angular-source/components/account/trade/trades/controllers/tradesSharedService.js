//=require angular-source/components/account/trade/trades/trades.module

'use strict';

angular.module('account.trade.orders').service('TradesSharedService', function() {
    var tradeId = {
        tradeId: ''
    };

    return {
        setTradeIdOfTrade: function(value) {
            tradeId = {tradeId: value};
        },
        getTradeIdOfTrade: function() {
            return tradeId;
        }
    }
});