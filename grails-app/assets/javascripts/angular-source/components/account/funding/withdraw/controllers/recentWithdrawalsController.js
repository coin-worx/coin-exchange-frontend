//=require angular-source/components/account/funding/withdraw/withdraw.module

'use strict';

angular.module('account.funding.withdraw').controller('recentWithdrawalsController', [
    '$scope', '$timeout', 'recentWithdrawalsService', function ($scope, $timeout, recentWithdrawalsService) {

        var _errors = '';
        var currentCurrency = 'BTC';

        assignNavigationFlags(true, false);

        loadRecentWithdrawals();

        intervalFunction();

        function intervalFunction(){
            $timeout(function() {
                loadRecentWithdrawals();
                intervalFunction()
            }, 30000)
        };

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

        $scope.cancelWithdraw = function(withdraw){
            recentWithdrawalsService.cancelWithdraw({withdrawId: withdraw.WithdrawId}).success(function (cancelWithdrawResponse){
                if(cancelWithdrawResponse.CancelSuccessful){
                    loadRecentWithdrawals();
                }
            }).error(function (errorMassage){
                    _errors = errorMassage;
                });
        };

        $scope.navigateToRecentWithdrawals = function(){
            assignNavigationFlags(true, false);
        }

        $scope.navigateToRecentWithdrawDetails = function(withdraw){
//            $scope.currentWithdrawId = withdraw.WithdrawId;
//            $scope.currentWithdrawType = withdraw.Type;
//            $scope.currentWithdrawDate = withdraw.DateTime;
//            $scope.currentWithdrawAmount = withdraw.Amount;
//            $scope.currentWithdrawFee = withdraw.Fee;
//            $scope.currentWithdrawStatus = withdraw.Status;
//            $scope.currentWithdrawAddress = withdraw.BitcoinAddress;
//            $scope.currentWithdrawTxId = withdraw.TransactionId;
            $scope.withdraw = withdraw;
            assignNavigationFlags(false, true);
        }

        // Set flags which will describe that which template will be shown and which will not using ng-show
        function assignNavigationFlags(showRecentWithdrawals, showRecentWithdrawDetails){
            $scope.showRecentWithdrawals = showRecentWithdrawals;
            $scope.showRecentWithdrawDetails = showRecentWithdrawDetails;
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
