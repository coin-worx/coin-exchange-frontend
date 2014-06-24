//=require ../auth.module

'use strict';

angular.module('auth').factory('AuthService', ['$http', '$location', '$log', 'localStorageService',
  function ($http, $location, $log, localStorageService) {
    var userInfo = localStorageService.get('userInfo') || {
      username: '',
      sessionLogoutTime: '',
      lastLogin: ''
    };

    var _errors = '';

    function logoutFromUI() {
      _errors = '';
      userInfo = {};
      localStorageService.remove('userInfo');
    }

    function getNewSessionLogoutTime() {
      var sessionExpiredTime = new Date();
      sessionExpiredTime.setMinutes(sessionExpiredTime.getMinutes() + 10); //todo: update this hardcoded value with value from response

      return sessionExpiredTime;
    }

    return {
      login: function (username, password) {
        return $http.post('auth/login', {username: username, password: password})
          .success(function (response) {
            //@Todo: update username and session logout time with response from backend.
            //@todo: for now use hardcoded values
            _errors = '';

            $log.info('login response');
            $log.info(response);

            var newSessionLogoutTime = getNewSessionLogoutTime();

            userInfo = {username: username, sessionLogoutTime: newSessionLogoutTime, lastLogin: response['lastLogin']};

            localStorageService.set('userInfo', {username: username, sessionLogoutTime: newSessionLogoutTime,
              lastLogin: response['lastLogin']});
            $location.path('/account');
          })
          .error(function (errorMessage) {
            $log.error(errorMessage);
            _errors = errorMessage;
          });
      },
      logout: function () {
        return $http.post('auth/logout')
          .success(function (response) {
            //@Todo: update username and session logout time
            logoutFromUI();
          })
          .error(function (error) {
            console.log(error);
          });
      },
      isLoggedIn: function () {
        return userInfo && userInfo.username;
      },
      isSessionExpired: function () {
        $log.info(new Date(userInfo.sessionLogoutTime));
        return (new Date(userInfo.sessionLogoutTime) - new Date()) < 0
      },
      getUserInfo: function () {
        return userInfo;
      },
      getErrors: function () {
        return _errors;
      },
      logoutFromUI: function () {
        logoutFromUI();
      },
      getLastLogin: function () {
        return new Date(userInfo.lastLogin);
      },
      updateSessionLogoutTime: function () {
        userInfo.sessionLogoutTime = getNewSessionLogoutTime();
        localStorageService.set('userInfo', {username: userInfo.username, sessionLogoutTime: userInfo.sessionLogoutTime,
          lastLogin: userInfo.lastLogin});
      },
      userInfo : userInfo
    }
  }]);