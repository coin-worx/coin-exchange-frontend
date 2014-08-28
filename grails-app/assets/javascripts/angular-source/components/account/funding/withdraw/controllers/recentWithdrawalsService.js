//=require angular-source/components/account/funding/withdraw/withdraw.module

'use strict';

angular.module('account.funding.withdraw').service('recentWithdrawalsService',[
    '$http', function ($http) {
        return{
            getRecentWithdrawals : function(currency){
                return $http.post('api/getRecentWithdrawals', currency);
            }
        }
    }]);