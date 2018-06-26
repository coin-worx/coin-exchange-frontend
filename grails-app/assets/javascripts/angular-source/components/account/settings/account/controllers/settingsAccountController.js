//=require angular-source/components/account/settings/account/settingsAccount.module

'use strict';

angular.module('account.settings.account').controller('settingsAccountController', [
    '$scope', '$timeout', 'settingsAccountService', function ($scope, $timeout, settingsAccountService) {

        var _errors = '';
        var _response = '';
        loadAccountSettings();
        $scope.isDefaultLogout = false;
        $scope.timeZone = '[+05:00 PKT] Karachi, Asia';
        $scope.logoutModes = [{name:'Custom'},
            {name:'Default(10 Minutes)'}]

        function loadAccountSettings(){
            settingsAccountService.getAccountSettings()
                .success(function (data){
                    $scope.accountSettings = data;
                    $scope.languages = [];
                    for(var i = 0; i < $scope.accountSettings.LanguagesAvailable.length; i++){
                        $scope.languages.push({Name: $scope.accountSettings.LanguagesAvailable[i]})
                    }
                }).error(function (){
                    $scope.recentWithdrawals = null;
                })
        };

        $scope.submitChangeSettingsForm = function(form){
            _response = '';
            _errors = '';
            var email = '';
            if($scope.email === undefined || $scope.email === ''){
               email = $scope.accountSettings.Email;
            }
            else{
                email = $scope.email;
            }
            if($scope.autoLogoutMinutes === undefined || $scope.autoLogoutMinutes === ''){
                if($scope.isDefaultLogout === false){
                    _errors = 'Please specify the custom auto logout minutes';
                    return;
                }
            }
            settingsAccountService.changeSettings({email: email, pgpPublicKey: $scope.pgpPublicKey, language: $scope.language,
                timeZone: $scope.timeZone, isDefaultAutoLogout: $scope.isDefaultLogout, autoLogoutMinutes: $scope.autoLogoutMinutes})
                .success(function(){
                    _response = "Change Settings successful";
                })
                .error(function(){
                    _errors = "Change Settings Failed";
                });
        }

        $scope.setLogoutMode = function(value){
            if(value.name === "Default(10 Minutes)"){
                $scope.isDefaultLogout = true;
            }
            if(value.name === "Custom"){
                $scope.isDefaultLogout = false;
            }
        };

        $scope.getErrors = function(){
            return _errors;
        }

        $scope.getResponse = function(){
            return _response;
        }

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

            $scope.recentWithdrawals = $filter('orderBy')($scope.recentWithdrawals, columnName, $scope.sort.reverse);
            setPaginationParams();
            recalculateMinAndMax();
            filterCollection();
        };

        //Sorting params
        function setPaginationParams() {
            $scope.currentPage = 1;
            $scope.maxSize = 1;
            $scope.totalItems = $scope.recentWithdrawals.length;
        }

        $scope.pageChanged = function () {
            recalculateMinAndMax();
            filterCollection();
        };

        function filterCollection() {
            $scope.filteredRecentWithdrawals = $scope.recentWithdrawals.slice($scope.currentMinIndex, $scope.currentMaxIndex);
        }

        function recalculateMinAndMax() {
            $scope.currentMinIndex = ($scope.currentPage - 1) * 10;
            $scope.currentMaxIndex = Math.min($scope.totalItems, $scope.currentPage * 10);
        }

        $scope.setLabelStyles = function (label) {
            var className = 'label-';
            switch (label) {
                case 'Cancelled':
                    className += 'important';
                    break;
                case 'Confirmed':
                    className += 'success';
                    break;
                case 'Pending':
                    className += 'info';
                    break;

                default:
                    className += 'inverse';
            }

            return className;
        };
    }]);
