//=require ../auth.module

'use strict';

angular.module('auth').controller('NavigationController', ['$scope', '$location', 'AuthService',
  function ($scope, $location, AuthService) {
    $scope.isLoggedIn = function () {
      return AuthService.isLoggedIn();
    };

    $scope.getUserName = function() {
      var userInfo = AuthService.getUserInfo();
      return userInfo.username;
    };
  }]);