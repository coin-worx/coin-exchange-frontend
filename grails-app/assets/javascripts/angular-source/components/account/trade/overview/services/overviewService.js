//=require angular-source/components/account/trade/overview/overview.module

'use strict';

angular.module('account.trade').service('OverviewService', [
    '$http', function ($http) {
        return {
            query: function () {
                return $http.get('api/getBalance');
            }
        };
    } ]);