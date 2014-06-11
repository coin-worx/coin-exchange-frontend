//=require angular-source/components/currencyPairs/currencyPairs.module

'use strict';

angular.module('currencyPairs').service('CurrencyPairsService', [
    '$http', function ($http) {
        return {
            query: function () {
                return $http.get('api/getCurrencyPairs');
            }
        };
    } ]);