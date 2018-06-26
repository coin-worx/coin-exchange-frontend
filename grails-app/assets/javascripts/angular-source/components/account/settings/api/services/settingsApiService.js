//=require angular-source/components/account/settings/api/settingsApi.module

'use strict';

angular.module('account.settings.api').service('settingsApiService',[
    '$http', function ($http) {
        return{
            getSecurityKeys : function(){
                return $http.get('api/getSecurityKeys');
            }
            ,
            createNewKey : function(date){
            return $http.post('api/createNewKey', date);
        }
        }
    }]);