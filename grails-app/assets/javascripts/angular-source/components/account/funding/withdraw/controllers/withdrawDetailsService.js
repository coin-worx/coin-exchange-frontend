//=require angular-source/components/account/funding/withdraw/withdraw.module

'use strict';

angular.module('account.funding.withdraw').service('withdrawDetailsService',[
    '$http', function ($http) {
        return{
            saveWithdrawAddress : function(address){
                return $http.post('api/saveWithdrawAddress', address);
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
            commitWithdraw : function(withdraw){
                return $http.post('api/commitWithdraw', withdraw);
            }
            ,
            deleteWithdrawAddress : function(bitcoinAddress){
                return $http.post('api/deleteWithdrawAddress', bitcoinAddress);
            }
        }
    }]);