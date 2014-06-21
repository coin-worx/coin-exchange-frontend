//=require ../auth.module

'use strict';

angular.module('auth').controller('AuthController', ['$scope', '$location', 'AuthService',
  function ($scope, $location, AuthService) {
    $scope.credentials = {};

    $scope.submit = function () {
      if ($scope.loginForm.$invalid) {
        return false;
      } else {
        AuthService.login($scope.credentials.username, $scope.credentials.password);
      }
    };

    $scope.logout = function () {
      AuthService.logout();
    };

    $scope.getErrors = function () {
      return AuthService.getErrors();
    }

  }]);