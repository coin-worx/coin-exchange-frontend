//=require angular-source/components/account/funding/deposit/deposit.module

'use strict';

angular.module('account.funding.deposit').service('depositDetailsService',[
    '$http', function ($http) {
        return{
            createNewAddress : function(currency){
                return $http.post('api/createNewDepositAddress', currency);
            }
            ,
            getDepositLimits : function(currency){
                return $http.post('api/getDepositLimits', currency);
            }
            ,
            getDepositAddresses : function(currency){
                return $http.post('api/getDepositAddresses', currency);
            }
        }
    }]);