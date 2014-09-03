//=require angular-source/components/account/getVerified.module

'use strict';

angular.module('account.getVerified').service('getVerifiedService',[
    '$http', function ($http) {
        return{
            getDepositTierLimits : function(){
                return $http.get('api/getDepositTierLimits');
            }
            ,
            getWithdrawTierLimits : function(){
                return $http.get('api/getWithdrawTierLimits');
            }
            ,
            getTierStatus : function(){
                return $http.get('api/getTierStatus');
            }
        }
    }]);