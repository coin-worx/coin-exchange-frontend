'use strict';

blancrockExchangeApp.controller('NavigationController', ['$scope', '$location', function ($scope, $location) {
        $scope.isActive=function(path) {
            return path === $location.path();
        };
}]);
