//=require angular-source/components/account/trade/trades/trades.module

'use strict';

angular.module('account.trade.trades').controller('TradeDetailsController', [
    '$scope', 'TradeDetailService', 'TradesSharedService', 'OrdersSharedService', function ($scope, tradeDetailsService, tradesSharedService, orderSharedService) {
        $scope.tradeDetailsLoaded = false;
        $scope.filteredTrades = [];

        tradeDetailsService.query(tradesSharedService.getTradeIdOfTrade())
            .success(function (data) {
                $scope.tradeDetails = data;
                $scope.tradeDetailsLoaded = true;
            }).error(function () {
                $scope.tradeDetails = '';
                $scope.tradeDetailsLoaded = true;
            });

        $scope.setOrderId = function (orderId) {
            orderSharedService.setOrderIdOfOrder(orderId);
        };
    }]);