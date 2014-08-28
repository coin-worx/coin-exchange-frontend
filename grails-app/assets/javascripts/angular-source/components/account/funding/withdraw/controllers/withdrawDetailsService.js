//=require angular-source/components/account/funding/withdraw/withdraw.module

'use strict';

angular.module('account.funding.withdraw').service('withdrawDetailsService',[
    '$http', function ($http) {
        return{
            saveAddress : function(currency){
                return $http.post('api/createNewDepositAddress', currency);
            }
            ,
            getWithdrawLimits : function(currency){
                return $http.post('api/getWithdrawLimits', currency);
            }
            ,
            getWithdrawAddresses : function(currency){
                return $http.post('api/getWithdrawAddresses', currency);
            }
            ,
            commitWithdraw : function(currency){
                return $http.get('api/getDepositAddresses', currency);
            }
        }
    }]);