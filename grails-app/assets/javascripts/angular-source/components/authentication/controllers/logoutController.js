//=require ../auth.module

'use strict';

angular.module('auth').controller('LogoutController', ['$scope', '$location', 'AuthService',
  function ($scope, $location, AuthService) {
    AuthService.logout();
  }]);