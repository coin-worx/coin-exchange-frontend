//=require angular-source/components/account/history/ledger/ledger.module

'use strict';

angular.module('account.history.ledger').controller('ledgerController', [
    '$scope', '$timeout', 'ledgerService', function ($scope, $timeout, ledgerService) {

        var currency = 'BTC'

        function loadLedgers(){
            ledgerService.getAllLedgers()
                .success(function (data) {
                    $scope.ledgers = data;
                    setPaginationParams();
                    recalculateMinAndMax();
                    filterCollection();

                    $scope.ledgersLoaded = true;

                }).error(function () {
                    $scope.ledgers = [];
                });
        };

        loadLedgers();

        intervalFunction();

        function intervalFunction(){
            $timeout(function() {
                loadLedgers();
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
