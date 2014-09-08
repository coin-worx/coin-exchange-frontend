//=require angular-source/components/account/security/password/password.module

'use strict';

angular.module('account.security.password').service('passwordService',[
    '$http', function ($http) {
        return{
            changePassword : function(newPassword){
                return $http.post('api/changePassword', newPassword);
            }
        }
    }]);