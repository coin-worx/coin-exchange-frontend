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
            ,
            getTier1Details : function(){
                return $http.get('api/getTier1Details');
            }
            ,
            getTier2Details : function(){
                return $http.get('api/getTier2Details');
            }
            ,
            getTier3Details : function(){
                return $http.get('api/getTier3Details');
            }
            ,
            applyForTier1 : function(tier1Params){
                return $http.post('api/applyForTier1', tier1Params);
            }
            ,
            applyForTier2 : function(tier2Params){
                return $http.post('api/applyForTier2', tier2Params);
            }
            ,
            applyForTier3 : function(tier3Params){
                return $http.post('api/applyForTier3', tier3Params);
            }
            ,
            applyForTier4 : function(tier4Params){
                return $http.post('api/applyForTier4', tier4Params);
            }
        }
    }]);