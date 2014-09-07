//=require angular-source/components/account/settings/notifications/settingsNotifications.module

'use strict';

angular.module('account.settings.notifications').service('settingsNotificationsService',[
    '$http', function ($http) {
        return{
            sendNotifications : function(){
                return $http.get('api/sendNotifications');
            }
        }
    }]);