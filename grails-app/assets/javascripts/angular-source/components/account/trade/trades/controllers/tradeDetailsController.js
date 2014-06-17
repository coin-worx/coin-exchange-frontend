//=require angular-source/components/account/trade/trades/trades.module

'use strict';

angular.module('account.trade.trades').controller('TradeDetailsController', [
    '$scope', 'TradeDetailService', 'TradesSharedService', function ($scope, tradeDetailsService, tradesSharedService) {
        $scope.loaded = false;
        $scope.filteredTrades = [];

        tradeDetailsService.query(tradesSharedService.getTradeIdOfTrade())
            .success(function (data) {
                $scope.tradeDetails = data;
                $scope.loaded = true;
            }).error(function () {
                $scope.tradeDetails = [];
                $scope.loaded = true;
            });
    }]);