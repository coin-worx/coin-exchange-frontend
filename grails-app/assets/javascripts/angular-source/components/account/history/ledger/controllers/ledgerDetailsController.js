//=require angular-source/components/account/history/ledger/ledger.module

'use strict';

angular.module('account.history.ledger').controller('ledgerDetailsController', [
    '$scope', '$timeout', '$routeParams', 'ledgerDetailsService', function ($scope, $timeout, $routeParams, ledgerDetailsService) {

        function loadLedger(){
            var ledgerId = $routeParams.ledgerId;
            ledgerDetailsService.getLedgerDetails({ledgerId: ledgerId})
                .success(function (data) {
                    $scope.ledger = data;
                    //setPaginationParams();
                    //recalculateMinAndMax();
                    //filterCollection();

                    $scope.ledgerLoaded = true;

                }).error(function () {
                    $scope.ledger = null;
                });
        };

        loadLedger();

        $scope.navigateToLedgerDetails = function(ledgerId){
            $scope.locationPath = '#/account/history/ledgerDetails?ledgerid=' + ledgerId;
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
