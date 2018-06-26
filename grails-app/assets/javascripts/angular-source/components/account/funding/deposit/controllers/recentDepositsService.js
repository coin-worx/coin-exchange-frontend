//=require angular-source/components/account/funding/deposit/deposit.module

'use strict';

angular.module('account.funding.deposit').service('recentDepositsService',[
    '$http', function ($http) {
        return{
            getRecentDeposits : function(currency){
                return $http.post('api/getRecentDeposits', currency);
            }
    }
    }]);