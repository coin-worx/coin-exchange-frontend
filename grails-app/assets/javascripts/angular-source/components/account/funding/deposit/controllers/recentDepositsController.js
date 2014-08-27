//=require angular-source/components/account/funding/deposit/deposit.module

'use strict';

angular.module('account.funding.deposit').controller('recentDepositsController', [
    '$scope', 'recentDepositsService', function ($scope, recentDepositsService) {
        var loaded = false;
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
    }]);
