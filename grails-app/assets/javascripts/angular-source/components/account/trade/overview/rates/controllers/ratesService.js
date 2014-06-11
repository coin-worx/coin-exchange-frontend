//=require angular-source/components/account/trade/overview/rates/rates.module

'use strict';

angular.module('account.trade.overview.rates').service('RatesService', [
    '$http', function ($http) {
        return {
            query: function () {
                return $http.get('api/getRates');
            }
        };
    } ]);