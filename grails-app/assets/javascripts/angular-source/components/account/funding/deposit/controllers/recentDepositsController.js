//=require angular-source/components/account/funding/deposit/deposit.module

'use strict';

angular.module('account.funding.deposit').controller('recentDepositsController', [
    '$scope', 'recentDepositsService', function ($scope, recentDepositsService) {

        assignNavigationFlags(true, false);
        var currentCurrency = 'BTC';

        loadDepositLedgers();

        function loadDepositLedgers(){
                recentDepositsService.getRecentDeposits({currency: currentCurrency})
                    .success(function (data){
                        $scope.depositLedgers = data;
                        $scope.depositLedgersLoaded = true;
                        setPaginationParams();
                        recalculateMinAndMax();
                        filterCollection();
                    }).error(function (){
                        $scope.depositLedgers = [];
                        $scope.depositLedgersLoaded = false;
                    })
        };

        $scope.navigateToRecentDeposits = function(){
            assignNavigationFlags(true, false);
        }

        $scope.navigateToRecentDepositDetails = function(deposit){
            $scope.deposit = deposit;
            assignNavigationFlags(false, true);
        }

        // Set flags which will describe that which template will be shown and which will not using ng-show
        function assignNavigationFlags(showRecentDeposits, showRecentDepositDetails){
            $scope.showRecentDeposits = showRecentDeposits;
            $scope.showRecentDepositDetails = showRecentDepositDetails;
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

            $scope.depositLedgers = $filter('orderBy')($scope.depositLedgers, columnName, $scope.sort.reverse);
            setPaginationParams();
            recalculateMinAndMax();
            filterCollection();
        };

        //Sorting params
        function setPaginationParams() {
            $scope.currentPage = 1;
            $scope.maxSize = 1;
            $scope.totalItems = $scope.depositLedgers.length;
        }

        $scope.pageChanged = function () {
            recalculateMinAndMax();
            filterCollection();
        };

        function filterCollection() {
            $scope.filteredDepositLedgers = $scope.depositLedgers.slice($scope.currentMinIndex, $scope.currentMaxIndex);
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
