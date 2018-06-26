//=require angular-source/components/account/settings/notifications/settingsNotifications.module

'use strict';

angular.module('account.settings.notifications').controller('settingsNotificationsController', [
    '$scope', '$timeout', 'settingsNotificationsService', function ($scope, $timeout, settingsNotificationsService) {

        var _errors = '';
        var _response = '';
        $scope.settingsSubmissionSuccessful = false;

        $scope.submitNotificationsForm = function(){
            settingsNotificationsService.sendNotifications({adminEmails: $scope.adminEmails,
                newsLetterEmails: $scope.newsLetterEmails})
                .success(function (data){
                    _response = "Settings submitted successfully";
                    $scope.settingsSubmissionSuccessful = true;
                }).error(function (){
                    _errors = "Settings could not be submitted";
                    $scope.settingsSubmissionSuccessful = false;
                })
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
