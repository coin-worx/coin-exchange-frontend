//=require ../auth.module

'use strict';

angular.module('auth').controller('NavigationController', ['$scope', '$location', 'AuthService',
  function ($scope, $location, AuthService) {
    var userInfo = AuthService.getUserInfo();

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
      return AuthService.getUserInfo();
    }, function (newUserInfo) {
      userInfo = newUserInfo;
    });
  }]);