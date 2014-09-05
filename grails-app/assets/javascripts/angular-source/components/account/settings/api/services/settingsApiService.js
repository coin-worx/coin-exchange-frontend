//=require angular-source/components/account/settings/api/settingsApi.module

'use strict';

angular.module('account.settings.api').service('settingsApiService',[
    '$http', function ($http) {
        return{
            getRecentWithdrawals : function(currency){
                return $http.post('api/getRecentWithdrawals', currency);
            }
            ,
            cancelWithdraw : function(withdrawId){
                return $http.post('api/cancelWithdraw', withdrawId);
            }
        }
    }]);