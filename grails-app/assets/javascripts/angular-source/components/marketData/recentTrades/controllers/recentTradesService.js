//=require angular-source/components/marketData/recentTrades/recentTrades.module

'use strict';

angular.module('marketData.recentTrades').service('RecentTradesService', [
    '$http', function ($http) {
        return {
            query: function () {
                return $http.get('api/getRecentTrades');
            }
        };
    } ]);