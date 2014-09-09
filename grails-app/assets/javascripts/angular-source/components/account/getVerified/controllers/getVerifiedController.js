//=require angular-source/components/account/getVerified/getVerified.module

'use strict';

angular.module('account.getVerified').controller('getVerifiedController', [
    '$scope', '$timeout', 'getVerifiedService', function ($scope, $timeout, getVerifiedService) {

        var _response = '';
        var _errors = '';
        $scope.tier2AddressLine1= '';
        $scope.tier2AddressLine2 = '';
        $scope.tier2AddressLine3 = '';
        $scope.tier2State = '';
        $scope.tier2City = '';
        $scope.tier2Zip = '';

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
                    getTierDetails($scope.tierStatuses[i].Tier.TierLevel,$scope.tierStatuses[i].Status);
                }
                else if($scope.tierStatuses[i].Tier.TierLevel === 'Tier 2'){
                    $scope.tier2Status = $scope.tierStatuses[i].Status;
                    getTierDetails($scope.tierStatuses[i].Tier.TierLevel,$scope.tierStatuses[i].Status);
                }
                else if($scope.tierStatuses[i].Tier.TierLevel === 'Tier 3'){
                    $scope.tier3Status = $scope.tierStatuses[i].Status;
                    getTierDetails($scope.tierStatuses[i].Tier.TierLevel,$scope.tierStatuses[i].Status);
                }
            }
        }

        // Get Tier Level Details if the tier level is verified or PreVerified
        function getTierDetails(tierLevel, tierStatus){
            //if(tierStatus === 'Verified' || tierStatus === 'PreVerified'){
                switch (tierLevel){
                    case 'Tier 1':
                        getVerifiedService.getTier1Details()
                            .success(function (depositTierLimits) {
                                $scope.tier1Verified = true;
                                $scope.tier1Details = depositTierLimits;
                            }).error(function (errorMessage) {
                                _errors = errorMessage;
                                $scope.tier1Details = null;
                                $scope.tier1Verified = false;
                            });
                    case 'Tier 2':
                        return getVerifiedService.getTier2Details()
                            .success(function (depositTierLimits) {
                                $scope.tier2Verified = true;
                                $scope.tier2Details = depositTierLimits;
                            }).error(function (errorMessage) {
                                _errors = errorMessage;
                                $scope.tier2Details = null;
                                if($scope.tier1Status !== 'Verified'){
                                   $scope.tier2ShowProhibition = true;
                                   $scope.tier2ShowForm = false;
                                    $scope.tier2Verified = false;
                                    $scope.tier2Details = null;
                                }
                                else if($scope.tier1Status === 'Verified'){
                                    $scope.tier2ShowProhibition = false;
                                    $scope.tier2ShowForm = true;
                                    $scope.tier2Verified = false;
                                    $scope.tier2Details = null;
                                }
                            });
                    case 'Tier 3':
                        return getVerifiedService.getTier3Details()
                            .success(function (depositTierLimits) {
                                $scope.tier3Verified = true;
                                $scope.tier3Details = depositTierLimits;
                            }).error(function (errorMessage) {
                                _errors = errorMessage;
                                $scope.tier3Details = null;
                                if($scope.tier2Status !== 'Verified'){
                                    $scope.tier3ShowProhibition = true;
                                    $scope.tier3ShowForm = false;
                                    $scope.tier3Verified = false;
                                    $scope.tier3Details = null;
                                }
                                else if($scope.tier1Status === 'Verified'){
                                    $scope.tier3ShowProhibition = false;
                                    $scope.tier3ShowForm = true;
                                    $scope.tier3Verified = false;
                                    $scope.tier3Details = null;
                                }
                            });
                    case 'Tier 4':
                         if($scope.tier3Status !== 'Verified'){
                            $scope.tier4ShowProhibition = true;
                            $scope.tier4Details = false;
                        }
                        else if($scope.tier1Status === 'Verified'){
                             $scope.tier4ShowProhibition = false;
                             $scope.tier4Details = true;
                        };
               // }
            }
        }

        $scope.submitTier1Form = function(form){
              getVerifiedService.applyForTier1({fullName: $scope.tier1FullName, dateOfBitrh: $scope.tier1DateOfBirth,
              country: $scope.teir1Country, phoneNumber: $scope.tier1PhoneNumber})
                  .success(function (response) {
                      $scope.tier1ApplySuccessful = true;
                      $scope.tier1ShowProhibition = false;
                      $scope.tier1ShowForm = false;
                      $scope.tier1Verified = true;
                      _response = 'Tier 1 Application submitted Successfully';
                  }).error(function () {
                      _errors = 'Could not subscribe to Tier 1';
                      $scope.tier1ApplyFailure = true;
                      $scope.tier1ShowProhibition = false;
                      $scope.tier1ShowForm = false;
                      $scope.tier1Verified = true;
                  });
        };

        $scope.submitTier2Form = function(form){
            var tt = $scope.tier2AddressLine1;
            getVerifiedService.applyForTier2({addressLine1: $scope.tier2AddressLine1, addressLine2: $scope.tier2AddressLine2,
                addressLine3: $scope.tier2AddressLine3, state: $scope.tier2State, city: $scope.tier2City, zip: $scope.tier2Zip})
                .success(function (response) {
                    $scope.tier2ApplySuccessful = true;
                    $scope.tier2ShowProhibition = false;
                    $scope.tier2ShowForm = false;
                    $scope.tier2Verified = true;
                    _response = 'Tier 2 Application submitted Successfully';
                }).error(function () {
                    _errors = 'Could not subscribe to Tier 2';
                    $scope.tier2ApplyFailure = true;
                    $scope.tier2ShowProhibition = false;
                    $scope.tier2ShowForm = false;
                    $scope.tier2Verified = true;
                });
        };

        $scope.submitTier3Form = function(form){
            getVerifiedService.applyForTier3({nationalId: $scope.tier3NationalId, addressLine2: $scope.tier3DocumentType,
                fileName: $scope.tier3FileName, ssn: $scope.tier3Ssn})
                .success(function (response) {
                    $scope.tier3ApplySuccessful = true;
                    $scope.tier3ShowProhibition = false;
                    $scope.tier3ShowForm = false;
                    $scope.tier3Verified = true;
                    _response = 'Tier 3 Application submitted Successfully';
                }).error(function () {
                    _errors = 'Could not subscribe to Tier 3';
                    $scope.tier3ApplyFailure = true;
                    $scope.tier3ShowProhibition = false;
                    $scope.tier3ShowForm = false;
                    $scope.tier3Verified = true;
                });
        };

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

        $scope.getErrors = function(){
            return _errors;
        };

        $scope.getResponse = function(){
            return _response;
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
