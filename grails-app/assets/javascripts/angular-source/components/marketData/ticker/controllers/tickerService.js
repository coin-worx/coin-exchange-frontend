//=require angular-source/components/marketData/ticker/ticker.module

'use strict';

angular.module('marketData.ticker').service('TickerService', [
    '$http', function ($http) {
        return {
            query: function () {
                return $http.get('api/getTickerInfo');
            }
        };
    } ]);