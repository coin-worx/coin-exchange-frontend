//=require angular-source/components/account/funding/deposit/deposit.module

'use strict';

angular.module('account.funding.deposit').service('depositDetailsService',[
    '$http', function ($http) {
        return{
            createNewAddress : function(){
                return $http.get('api/createNewDepositAddress');
            }
            ,
            getDepositLimits : function(){
                return $http.get('api/getDepositLimits');
            }
            ,
            getDepositAddresses : function(){
                return $http.get('api/getDepositAddresses');
            }
        }
    }]);