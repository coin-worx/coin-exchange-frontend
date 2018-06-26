//=require angular-source/components/account/security/password/password.module

'use strict';

angular.module('account.security.password').controller('passwordController', [
    '$scope', 'passwordService', function ($scope, passwordService) {
        var _errors = '';
        var _response = '';

        $scope.changePassword = function(){
            _errors = '';
            if($scope.newPassword === $scope.newPasswordConfirm){
                passwordService.changePassword({oldPassword: $scope.oldPassword, newPassword: $scope.newPassword})
                    .success(function (changeResponse){
                        if(!changeResponse.ChangeSuccessful){
                            _errors = changeResponse.Description;
                        }
                        else{
                            _response = 'Change Successful';
                        }
                    }).error(function (errorMessage){
                        _errors = 'Could not change Password';
                    });
                _errors = '';
            }
            else{
                _errors = 'New Password and Confirmation do not match';
            }
        }

        $scope.getErrors = function(){
            return _errors;
        };

        $scope.getResponse = function(){
            return _response;
        };

        $scope.sort = {
            reverse: false
        };

        $scope.getSortingClass = function (columnName) {
            var className = 'sorting';

            if ($scope.sort.predicate === columnName) {
                $scope.sort.reverse ? className += '_asc' : className += '_desc';
            }

            return className;
        };

        $scope.updateSorting = function (columnName) {
            if ($scope.sort.predicate === columnName) {
                $scope.sort.reverse = !$scope.sort.reverse;
            } else {
                $scope.sort.predicate = columnName;
                $scope.sort.reverse = true;
            }

            $scope.withdrawAddresses = $filter('orderBy')($scope.withdrawAddresses, columnName, $scope.sort.reverse);
            setPaginationParams();
            recalculateMinAndMax();
            filterCollection();
        };

        //Sorting params
        function setPaginationParams() {
            $scope.currentPage = 1;
            $scope.maxSize = 1;
            $scope.totalItems = $scope.withdrawAddresses.length;
        }

        $scope.pageChanged = function () {
            recalculateMinAndMax();
            filterCollection();
        };

        function filterCollection() {
            $scope.filteredWithdrawAddresses = $scope.withdrawAddresses.slice($scope.currentMinIndex, $scope.currentMaxIndex);
        }

        function recalculateMinAndMax() {
            $scope.currentMinIndex = ($scope.currentPage - 1) * 10;
            $scope.currentMaxIndex = Math.min($scope.totalItems, $scope.currentPage * 10);
        }
    }]);
