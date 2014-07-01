//=require angular-source/components/marketData/ohlc/ohlc.module

'use strict';

angular.module('marketData.ohlc').service('OhlcService', [
    '$http', function ($http) {
        return {
            query: function () {
                return $http.get('api/getOhlcInfo');
            }
        };
    } ]);