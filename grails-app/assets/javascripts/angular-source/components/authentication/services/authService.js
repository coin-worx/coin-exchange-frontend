//=require ../auth.module

'use strict';

angular.module('auth').factory('AuthService', ['$http', '$location', '$log', 'localStorageService',
  function ($http, $location, $log, localStorageService) {
    var _username = localStorageService.get('username') || '',
      _isLoggedIn = _username,
      _sessionLogoutTime;

    return {
      login: function (username, password) {
        return $http.post('auth/login', {username: username, password: password})
          .success(function (response) {
            //@Todo: update username and session logout time
            _isLoggedIn = true;
            _username = username;
            localStorageService.set('username', _username);
            console.log("_username: " + _username);
            $location.path('/');
          })
          .error(function (error) {
            $log.error('something wrong with login');
          });
      },
      logout: function () {
        return $http.post('auth/logout')
          .success(function (response) {
            //@Todo: update username and session logout time
            _isLoggedIn = false;
            localStorageService.remove('username');
          })
          .error(function (error) {
            $log.error('something wrong with logout');
          });
      },
      isLoggedIn: function () {
        return _isLoggedIn;
      },
      getUserName: function () {
        console.log('return ' + _username);
        return _username;
      }
    }
  }]);