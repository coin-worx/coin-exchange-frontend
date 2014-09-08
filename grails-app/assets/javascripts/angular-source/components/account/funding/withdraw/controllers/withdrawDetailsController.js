//=require angular-source/components/account/funding/withdraw/withdraw.module

'use strict';

angular.module('account.funding.withdraw').controller('withdrawDetailsController', [
    '$scope', '$routeParams', '$filter', 'withdrawDetailsService', function ($scope, $routeParams, $filter, withdrawDetailsService) {
        var currentCurrency = '';

        var _errors = '';
        $scope.withdrawForm = true;
        var fromManageToAddAddress = false;
        var fromWithdrawFormToAddAddress = false;
        loadWithdrawDetails();

        function loadWithdrawDetails(){
            _errors = '';
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
                        _errors = 'Error while fetching withdrawals';
                    });
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
            _errors = '';
            if($scope.amount === undefined || $scope.amount === null || $scope.amount === ''){
                _errors = "Invalid amount";
            }
            if($scope.bitcoinAddress === undefined || $scope.bitcoinAddress === null){
                _errors = "No address selected";
            }
            if($scope.amount !== undefined && $scope.amount !== null && $scope.amount !== '' && $scope.bitcoinAddress !== undefined &&
                $scope.bitcoinAddress !== null){
                assignFlags(false, true, false, false, false, false, false, false);
                $scope.withdrawNetTotal = $scope.amount - $scope.withdrawLimits.Fee;
            }
        }

        $scope.navigateToWithdrawForm = function(){
            assignFlags(true, false, false, false, false, false, false, false);
            _errors = '';
        }

        // Add Address navigates back to two places: withdraw Form screen and Manage Addresses screen, depending on from which screen
        // the navigation was started from to get to AddAddress. When we start navigating, we will set appropriate flags to know from
        // which screen we came to AddAddress
        $scope.navigateFromAddAddress = function(){
            if(fromWithdrawFormToAddAddress){
                $scope.navigateToWithdrawForm();
                fromWithdrawFormToAddAddress = false;
            }
            else if(fromManageToAddAddress){
                $scope.navigateToManageWithdraw();
                fromManageToAddAddress = false;
            }
        }

        $scope.commitWithdraw = function(){
            _errors = '';
            withdrawDetailsService.commitWithdraw({currency: currentCurrency, bitcoinAddress: $scope.bitcoinAddress.BitcoinAddress,
            amount: $scope.amount})
                .success(function (commitWithdrawResponse){
                    if(!commitWithdrawResponse.CommitSuccessful){
                        _errors = commitWithdrawResponse.Description;
                        $scope.commitWithdrawId = null;
                        $scope.commitWithdrawSuccessful = false;
                        _errors = 'Could not commit withdraw';
                    }
                    else{
                        assignFlags(false, false, true, false, false, false, false, false);
                        $scope.commitWithdrawId = commitWithdrawResponse.WithdrawId;
                        $scope.commitWithdrawSuccessful = true;
                    }
                }).error(function (errorMessage){
                    _errors = 'Could not commit withdraw';
                });
            _errors = '';
        }

        $scope.navigateToAddAddress = function(){
            loadWithdrawDetails();
            assignFlags(false, false, false, true, false, false, false, false);
        }

        $scope.addNewAddress = function(form){
            _errors = '';
            if($scope.withdrawAddressDescription !== undefined || $scope.newWithdrawAddress !== undefined) {
                withdrawDetailsService.saveWithdrawAddress({currency: currentCurrency, bitcoinAddress: $scope.newWithdrawAddress,
                    description: $scope.withdrawAddressDescription
                }).success(function (addAddressResponse){
                        if(addAddressResponse !== null && addAddressResponse.SaveSuccessful === true){
                            assignFlags(false, false, false, false, true, false, false, false);
                        }
                        else{
                            _errors = addAddressResponse.Description;
                            assignFlags(false, false, false, true, false, false, false, false);
                        }
                    }).error(function (){
                        $scope.withdrawAddresses = [];
                        $scope.withdrawAddressesLoaded = false;

                        assignFlags(false, false, false, true, false, false, false, false);
                    });
            }
            else{
                assignFlags(false, false, false, true, false, false, false, false);
                _errors = "No address or description provided"
            }
        }

        function assignFlags(withdrawForm, reviewWithdraw, withdrawSuccessful, showAddAddress, showAddAddressSuccessful,
                             showManageAddressesMain, showConfirmAddressDelete, showDeleteSuccessful){
            $scope.withdrawForm = withdrawForm;
            $scope.reviewWithdraw = reviewWithdraw;
            $scope.withdrawSuccessful = withdrawSuccessful;
            $scope.showAddAddress = showAddAddress;
            $scope.showAddAddressSuccessful = showAddAddressSuccessful;
            $scope.showManageAddressesMain = showManageAddressesMain;
            $scope.showConfirmAddressDelete = showConfirmAddressDelete;
            $scope.showDeleteSuccessful = showDeleteSuccessful;
        }

        $scope.navigateToManageWithdraw = function(){
            loadWithdrawDetails();
            $scope.currentWithdrawAddress = null;
            assignFlags(false,false,false,false, false, true, false, false);
        }

        $scope.navigateToConfirmDelete = function(address){
            $scope.currentWithdrawAddress = address;
            assignFlags(false,false,false,false, false, false, true, false);
        }

        $scope.fromManageToAddAddress = function(){
            _errors = '';
            $scope.newWithdrawAddress = null;
            $scope.withdrawAddressDescription = null;
            // This flag will let us know in the call to AddAddress was made from ManageAddresses, so we could go back to ManageAddresses
            // in case Cancel is clicked on AddAddress screen
            fromManageToAddAddress = true;
            $scope.navigateToAddAddress();
        }

        $scope.fromWithdrawFormToAddAddress = function(){
            // This flag will let us know in the call to AddAddress was made from WithdrawForm, so we could go back to WithdrawForm
            // in case Cancel is clicked on AddAddress screen
            fromWithdrawFormToAddAddress = true;
            $scope.navigateToAddAddress();
        }

        $scope.deleteAddress = function(){
            _errors = '';
            if($scope.currentWithdrawAddress !== undefined){
                withdrawDetailsService.deleteWithdrawAddress({bitcoinAddress: $scope.currentWithdrawAddress.BitcoinAddress})
                    .success(function(deleteResponse){
                        if(deleteResponse.DeleteSuccessful){
                            assignFlags(false,false,false,false, false, false, false, true);
                        }
                        else{
                            _errors = deleteResponse.Description;
                        }
                    }).error(function(errorMessage){
                        _errors = errorMessage;
                    });
            }
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
            $scope.filteredWithdrawAddresses = $scope.withdrawAddresses.slice($scope.currentMinIndex, $scope.currentMaxIndex);
        }

        function recalculateMinAndMax() {
            $scope.currentMinIndex = ($scope.currentPage - 1) * 10;
            $scope.currentMaxIndex = Math.min($scope.totalItems, $scope.currentPage * 10);
        }
    }]);
