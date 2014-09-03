//=require angular-source/components/account/getVerified/getVerified.module

'use strict';

angular.module('account.getVerified').controller('getVerifiedController', [
    '$scope', '$timeout', 'getVerifiedService', function ($scope, $timeout, getVerifiedService) {

        var _errors = '';

        function loadDepositTierLevels(){
            getVerifiedService.getDepositTierLimits()
                .success(function (depositTierLimits) {
                    $scope.depositTierLimits = depositTierLimits;
                }).error(function (errorMessage) {
                    $scope.depositTierLimits = null;
                    _errors = errorMessage;
                });
        };

        function loadWithdrawTierLimits(){
            getVerifiedService.getWithdrawTierLimits()
                .success(function (withdrawTierLimits) {
                    $scope.withdrawTierLimits = withdrawTierLimits;
                }).error(function (errorMessage) {
                    $scope.withdrawTierLimits = null;
                    _errors = errorMessage;
                });
        };

        function loadTierStatuses(){
            getVerifiedService.getTierStatus()
                .success(function (withdrawTierLimits) {
                    $scope.tierStatuses = withdrawTierLimits;
                    assignTierStatuses();
                }).error(function (errorMessage) {
                    $scope.tierStatuses = null;
                    _errors = errorMessage;
                });
        };

        function assignTierStatuses(){
            for(var i = 0; i < $scope.tierStatuses.length; i++){
                if($scope.tierStatuses[i].Tier.TierLevel === 'Tier 0'){
                    $scope.tier0Status = $scope.tierStatuses[i].Status;
                }
                else if($scope.tierStatuses[i].Tier.TierLevel === 'Tier 1'){
                    $scope.tier1Status = $scope.tierStatuses[i].Status;
                }
                else if($scope.tierStatuses[i].Tier.TierLevel === 'Tier 2'){
                    $scope.tier2Status = $scope.tierStatuses[i].Status;
                }
                else if($scope.tierStatuses[i].Tier.TierLevel === 'Tier 3'){
                    $scope.tier3Status = $scope.tierStatuses[i].Status;
                }
                else if($scope.tierStatuses[i].Tier.TierLevel === 'Tier 4'){
                    $scope.tier4Status = $scope.tierStatuses[i].Status;
                }
            }
        }

        loadDepositTierLevels();
        loadWithdrawTierLimits();
        loadTierStatuses();

        //intervalFunction();

        function intervalFunction(){
            $timeout(function() {
                loadDepositTierLevels();
                loadWithdrawTierLimits();
                intervalFunction()
            }, 30000)
        };

        $scope.navigateToLedgerDetails = function(ledgerId){
            $scope.locationPath = '#/account/history/ledgerDetails?ledgerId=' + ledgerId;
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

            $scope.ledgers = $filter('orderBy')($scope.ledgers, columnName, $scope.sort.reverse);
            setPaginationParams();
            recalculateMinAndMax();
            filterCollection();
        };

        //Sorting params
        function setPaginationParams() {
            $scope.currentPage = 1;
            $scope.maxSize = 1;
            $scope.totalItems = $scope.ledgers.length;
        }

        $scope.pageChanged = function () {
            recalculateMinAndMax();
            filterCollection();
        };

        function filterCollection() {
            $scope.filteredLedgers = $scope.ledgers.slice($scope.currentMinIndex, $scope.currentMaxIndex);
        }

        function recalculateMinAndMax() {
            $scope.currentMinIndex = ($scope.currentPage - 1) * 10;
            $scope.currentMaxIndex = Math.min($scope.totalItems, $scope.currentPage * 10);
        }
    }]);
