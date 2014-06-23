//=require ../auth.module

'use strict';

angular.module('auth').controller('NavigationController', ['$scope', '$location', 'AuthService',
  function ($scope, $location, AuthService) {
    var userInfo = AuthService.userInfo;

    $scope.isLoggedIn = function () {
      return AuthService.isLoggedIn();
    };

    $scope.getUserName = function () {
      return userInfo.username;
    };

    $scope.getLastLogin = function () {
      return userInfo.lastLogin;
    };

    $scope.$watch(function () {
      return AuthService.userInfo;
    }, function (newUserInfo) {
      userInfo = newUserInfo;
    });
  }]);