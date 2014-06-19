//=require ../auth.module

'use strict';

angular.module('auth').controller('AuthController', ['$scope', 'AuthService',
  function ($scope, AuthService) {
    $scope.credentials = {};

    $scope.submit = function () {
      if ($scope.loginForm.$invalid) {
        return false;
      } else {
        AuthService.login($scope.credentials.username, $scope.credentials.password)
          .success(function (response) {
            console.log(response);
          }).error(function (error) {
            console.log(error);
          })
      }
    };

    $scope.logout = function () {
      AuthService.logout()
        .success(function (response) {
          console.log(response);
        })
        .error(function (error) {
          console.log('show error');
        })
    };

  }]);