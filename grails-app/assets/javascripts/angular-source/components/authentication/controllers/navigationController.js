//=require ../auth.module

'use strict';

angular.module('auth').controller('NavigationController', ['$scope', '$location', 'AuthService',
  function ($scope, $location, AuthService) {
    $scope.isLoggedIn = function () {
      return AuthService.isLoggedIn();
    };

    $scope.getUserName = function() {
      return AuthService.getUserName();
    };
  }]);