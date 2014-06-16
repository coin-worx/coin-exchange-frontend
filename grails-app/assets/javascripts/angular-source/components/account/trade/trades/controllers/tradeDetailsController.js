//=require angular-source/components/account/trade/trades/trades.module

'use strict';

angular.module('account.trade.trades').controller('TradeDetailsController', [
    '$scope', 'TradeDetailService', function ($scope, tradeDetailsService) {
        $scope.loaded = false;
        $scope.filteredTrades = [];

        tradeDetailsService.query()
            .success(function (data) {
                $scope.tradeDetails = data;
                $scope.loaded = true;
            }).error(function () {
                $scope.tradeDetails = [];
                $scope.loaded = true;
            });


    }]);