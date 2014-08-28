//=require angular-source/components/account/funding/withdraw/withdraw.module

'use strict';

angular.module('account.funding.withdraw').controller('withdrawDetailsController', [
    '$scope', '$routeParams', '$filter', 'withdrawDetailsService', function ($scope, $routeParams, $filter, withdrawDetailsService) {
        var currentCurrency = '';

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
