//=require angular-source/components/account/funding/withdraw/withdraw.module

'use strict';

angular.module('account.funding.withdraw').controller('recentWithdrawalsController', [
    '$scope', 'recentWithdrawalsService', function ($scope, recentWithdrawalsService) {
        var loaded = false;
        var currentCurrency = 'BTC';

        loadRecentWithdrawals();

        function loadRecentWithdrawals(){
            recentWithdrawalsService.getRecentWithdrawals({currency: currentCurrency})
                .success(function (data){
                    $scope.recentWithdrawals = data;
                    $scope.recentWithdrawalsLoaded = true;
                    setPaginationParams();
                    recalculateMinAndMax();
                    filterCollection();
                }).error(function (){
                    $scope.recentWithdrawals = [];
                    $scope.recentWithdrawalsLoaded = false;
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
    }]);
