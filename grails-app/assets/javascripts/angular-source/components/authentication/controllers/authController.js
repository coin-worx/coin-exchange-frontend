//=require ../auth.module

'use strict';

angular.module('auth').controller('AuthController', ['$scope', '$location', 'AuthService',
  function ($scope, $location, AuthService) {
    $scope.credentials = {};

    $scope.submit = function () {
      if ($scope.loginForm.$invalid) {
        return false;
      } else {
        AuthService.login($scope.credentials.username, $scope.credentials.password)
          .success(function (response) {
            $location.path('/');
          }).error(function (error) {
            console.log(error);
          })
      }
    };

    $scope.logout = function () {
      AuthService.logout()
        .success(function (response) {
          $location.path('/login');
          console.log(response);
        })
        .error(function (error) {
          console.log('show error');
          console.log(error);
        })
    };

  }]);