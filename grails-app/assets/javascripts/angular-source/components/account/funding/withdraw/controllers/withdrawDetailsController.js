//=require angular-source/components/account/funding/withdraw/withdraw.module

'use strict';

angular.module('account.funding.withdraw').controller('withdrawDetailsController', [
    '$scope', '$routeParams', '$filter', 'withdrawDetailsService', function ($scope, $routeParams, $filter, withdrawDetailsService) {
        var currentCurrency = '';

        var _errors = '';
        $scope.withdrawForm = true;
        loadWithdrawDetails();

        function loadWithdrawDetails(){
            currentCurrency = $routeParams.currency;
            if(currentCurrency != null && currentCurrency != '' && currentCurrency != undefined){
                withdrawDetailsService.getWithdrawLimits({currency: currentCurrency})
                    .success(function (depositLimits) {
                        $scope.withdrawLimits = depositLimits;
                        $scope.withdrawLimitsLoaded = true;
                        if($scope.withdrawLimits != null){
                            withdrawDetailsService.getWithdrawAddresses({currency: currentCurrency})
                                .success(function (withdrawAddresses){
                                    assignWithdrawAddresses(withdrawAddresses)
                                }).error(function (){
                                    $scope.withdrawAddresses = [];
                                    $scope.withdrawAddressesLoaded = false;
                                });
                        }
                    }).error(function () {
                        $scope.withdrawLimits = null;
                        $scope.withdrawLimitsLoaded = false;
                    });
            }
            else{
                log.error("No currency provided to get the limits for")
            }
        };

        function assignWithdrawAddresses(withdrawAddresses){
            $scope.withdrawAddresses = withdrawAddresses;
            $scope.withdrawAddressesLoaded = true;
            setPaginationParams();
            recalculateMinAndMax();
            filterCollection();
        }

        $scope.reviewParamsBeforeCommit = function(){
            if($scope.amount === undefined || $scope.amount === null || $scope.amount === ''){
                _errors = "Invalid amount";
            }
            if($scope.bitcoinAddress === undefined || $scope.bitcoinAddress === null){
                _errors = "No address selected";
            }
            if($scope.amount !== undefined && $scope.amount !== null && $scope.amount !== '' && $scope.bitcoinAddress !== undefined &&
                $scope.bitcoinAddress !== null){
                $scope.withdrawForm = false;
                $scope.reviewWithdraw = true;
                $scope.withdrawSuccessful = false;
                $scope.withdrawNetTotal = $scope.amount - $scope.withdrawLimits.Fee;
            }
        }

        $scope.withdrawCancelled = function(){
            $scope.withdrawForm = true;
            $scope.reviewWithdraw = false;
            $scope.withdrawSuccessful = true;
            _errors = '';
        }

        $scope.withdrawConfirmed = function(){
            $scope.withdrawForm = false;
            $scope.reviewWithdraw = false;
            $scope.withdrawSuccessful = true;
            withdrawDetailsService.commitWithdraw({currency: currentCurrency, bitcoinAddress: $scope.bitcoinAddress.BitcoinAddress,
            amount: $scope.amount});
            _errors = '';
        }

        $scope.getErrors = function(){
           return _errors;
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
            $scope.filteredwithdrawAddresses = $scope.withdrawAddresses.slice($scope.currentMinIndex, $scope.currentMaxIndex);
        }

        function recalculateMinAndMax() {
            $scope.currentMinIndex = ($scope.currentPage - 1) * 10;
            $scope.currentMaxIndex = Math.min($scope.totalItems, $scope.currentPage * 10);
        }
    }]);
