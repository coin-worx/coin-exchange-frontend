//=require ../auth.module

'use strict';

angular.module('auth').factory('AuthService', ['$http', function ($http) {
  return {
    login: function (username, password) {
      return $http.post('auth/login', {username: username, password: password});
    },
    logout: function () {
      return $http.post('auth/logout');
    }
  }
}]);