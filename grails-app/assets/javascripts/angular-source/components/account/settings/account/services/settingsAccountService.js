//=require angular-source/components/account/settings/account/settingsAccount.module

'use strict';

angular.module('account.settings.account').service('settingsAccountService',[
    '$http', function ($http) {
        return{
            getAccountSettings : function(){
                return $http.get('api/getAccountSettings');
            }
            ,
            changeSettings : function(settings){
                return $http.post('api/changeSettings', settings);
            }
        }
    }]);