//=require angular-source/components/account/settings/notifications/settingsNotifications.module

'use strict';

angular.module('account.settings.notifications').service('settingsNotificationsService',[
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