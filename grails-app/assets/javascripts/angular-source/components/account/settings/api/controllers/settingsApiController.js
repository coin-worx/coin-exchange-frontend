//=require angular-source/components/account/settings/api/settingsApi.module

'use strict';

angular.module('account.settings.api').controller('settingsApiController', [
    '$scope', '$timeout', '$location', '$location', 'settingsApiService', function ($scope, $timeout, $location,
            $window, settingsApiService) {
        var _errors = '';
        loadSecurityKeys();
        $scope.formats = ['dd-MMMM-yyyy', 'yyyy/MM/dd', 'dd.MM.yyyy', 'shortDate'];
        $scope.expirationFormat = $scope.formats[0];
        $scope.queryStartFormat = $scope.formats[0];
        $scope.queryEndFormat = $scope.formats[0];
        $scope.dateOptions = {
            formatYear: 'yy',
            startingDay: 1
        };
        $scope.today = function() {
            $scope.expirationDate = new Date();
            $scope.queryStartDate = new Date();
            $scope.queryEndDate = new Date();
        };
        $scope.today();

        $scope.clear = function () {
            $scope.expirationDate = null;
            $scope.queryStartDate = null;
            $scope.queryEndDate = null;
        };

        $scope.openExpiration = function($event) {
            $event.preventDefault();
            $event.stopPropagation();

            $scope.expirationOpened = true;
        };

        $scope.openQueryStart = function($event) {
            $event.preventDefault();
            $event.stopPropagation();

            $scope.queryStartOpened = true;
        };

        $scope.openQueryEnd = function($event) {
            $event.preventDefault();
            $event.stopPropagation();

            $scope.queryEndOpened = true;
        };

        $scope.toggleMin = function() {
            $scope.minDate = $scope.minDate ? null : new Date();
        };
        $scope.toggleMin();

        // Disable weekend selection
        $scope.disabled = function(date, mode) {
            return ( mode === 'day' && ( date.getDay() === 0 || date.getDay() === 6 ) );
        };

        $scope.expirationModel = 'expirationOff';
        $scope.queryStartModel = 'queryStartOff';
        $scope.queryEndModel = 'queryEndOff';

        $scope.expirationHourStep = 1;
        $scope.expirationMinuteStep = 15;
        $scope.queryStartHourStep = 1;
        $scope.queryStartMinuteStep = 15;
        $scope.queryEndHourStep = 1;
        $scope.queryEndMinuteStep = 15;

        $scope.expirationTimeOptions = {
            expirationHourStep: [1, 2, 3],
            expirationMinuteStep: [1, 5, 10, 15, 25, 30]
        };

        $scope.queryStartTimeOptions = {
            queryStartHourStep: [1, 2, 3],
            queryStartMinuteStep: [1, 5, 10, 15, 25, 30]
        };

        $scope.queryEndOptions = {
            queryEndHourStep: [1, 2, 3],
            queryEndMinuteStep: [1, 5, 10, 15, 25, 30]
        };

        $scope.expirationTime = new Date();
        $scope.queryStartTime = new Date();
        $scope.queryEndTime = new Date();
        $scope.expirationIsMeridian = true;
        $scope.queryStartIsMeridian = true;
        $scope.queryEndIsMeridian = true;

        $scope.expirationToggleMode = function() {
            $scope.expirationIsMeridian = ! $scope.expirationIsMeridian;
        };

        $scope.queryStartToggleMode = function() {
            $scope.queryStartIsMeridian = ! $scope.queryStartIsMeridian;
        };

        $scope.queryEndToggleMode = function() {
            $scope.queryEndIsMeridian = ! $scope.queryEndIsMeridian;
        };

        function loadSecurityKeys(){
            settingsApiService.getSecurityKeys()
                .success(function (data){
                    $scope.securityKeysList = data;
                    $scope.securityKeysListLoaded = true;
                    setPaginationParams();
                    recalculateMinAndMax();
                    filterCollection();
                }).error(function (){
                    $scope.securityKeysList = [];
                    $scope.securityKeysListLoaded = false;
                });
        };

        $scope.deleteSecurityKey = function(securityKey){
            var index = $scope.securityKeysList.indexOf(securityKey);
            settingsApiService.deleteSecurityKey()
                .success(function(response){
                    $scope.securityKeysList.splice(index, 1);
                    recalculateMinAndMax();
                    filterCollection();
                })
                .error(function(){

                })
        }

        $scope.navigateToGenerateNewKey = function(){
            var path = $location.path('/account/settings/generateNewKey');
        }

        var _response = '';
        $scope.createNewKey = function(){
            _response = '';
            setDateTimePermissions();
            setPermission();
            settingsApiService.createNewKey({permissions: permissions, keyDescription: $scope.keyDescription,
                enableExpirationDate: $scope.enableExpirationDate, expirationDate: $scope.expirationDate, expirationTime: $scope.expirationTime,
                enableStartDate: $scope.enableStartDate, queryStartDate: $scope.queryStartDate, queryStartTime: $scope.queryStartTime,
                enableEndDate: $scope.enableEndDate, queryEndDate: $scope.queryEndDate, queryEndTime: $scope.queryEndTime})
                .success(function(response){
                    $scope.newSecurityKeySuccess = true;
                    $scope.newSecurityKey = response;
                    _response = 'Security Keys created Successfully';
                })
                .error(function(errorMessage){
                    $scope.newSecurityKeySuccess = true;
                    $scope.newSecurityKey = null;
                    _errors = "Could not create Security Keys";
                });
        };

        function setDateTimePermissions(){
            if($scope.expirationModel === 'expirationOn'){
                $scope.enableExpirationDate = true;
            }
            if($scope.queryStartModel === 'queryStartOn'){
                $scope.enableStartDate = true;
            }
            if($scope.queryEndModel === 'queryEndOn'){
                $scope.enableEndDate = true;
            }
        }

        var permissions = [];
        function setPermission(){
            permissions = [];
            if($scope.QF !== undefined && $scope.QF !== '' && $scope.QF !== false){
                 permissions.push('QF');
            }
            if($scope.CO !== undefined && $scope.CO !== '' && $scope.CO !== false){
                permissions.push('CO');
            }
            if($scope.QCOT !== undefined && $scope.QCOT !== '' && $scope.QCOT !== false){
                permissions.push('QCOT');
            }
            if($scope.QLT !== undefined && $scope.QLT !== '' && $scope.QLT !== false){
                permissions.push('QLT');
            }
            if($scope.QOOT !== undefined && $scope.QOOT !== '' && $scope.QOOT !== false){
                permissions.push('QOOT');
            }
            if($scope.WF !== undefined && $scope.WF !== '' && $scope.WF !== false){
                permissions.push('WF');
            }
            if($scope.DF !== undefined && $scope.DF !== '' && $scope.DF !== false){
                permissions.push('DF');
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

            $scope.securityKeysList = $filter('orderBy')($scope.securityKeysList, columnName, $scope.sort.reverse);
            setPaginationParams();
            recalculateMinAndMax();
            filterCollection();
        };

        //Sorting params
        function setPaginationParams() {
            $scope.currentPage = 1;
            $scope.maxSize = 1;
            $scope.totalItems = $scope.securityKeysList.length;
        }

        $scope.pageChanged = function () {
            recalculateMinAndMax();
            filterCollection();
        };

        function filterCollection() {
            $scope.filteredSecurityKeysList = $scope.securityKeysList.slice($scope.currentMinIndex, $scope.currentMaxIndex);
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
