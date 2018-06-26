//=require angular-source/components/account/trade/refreshData/refreshData.module

'use strict';

angular.module('account.trade.refreshData').controller('RefreshDataController', [
    '$scope', '$rootScope', '$route', '$timeout', '$location', '$window', function ($scope, $rootScope, $route, $timeout, $location, $window) {

        // Style of the last updated value
        $scope.customStyle = {};
        $scope.lastUpdatedSeconds = 'just now';
        // Color at page load is green
        $scope.customStyle.style = {"color":"green"};
        var secondsCounter = 0;
        intervalFunction();

        function intervalFunction(){
            $timeout(function() {
                if(secondsCounter < 56){
                    secondsCounter += 1;
                    $scope.lastUpdatedSeconds = secondsCounter + ' seconds ago';
                    // Last Updated field's color is black when page has been refreshed
                    $scope.customStyle.style = {"color":"black"};
                    intervalFunction();
                }
                else{
                    resetCounter();
                    intervalFunction();
                }
            }, 1000)
        };

        $scope.currentTime = getDateTime();
        $scope.reload = function () {
            $scope.currentTime = getDateTime();
            resetCounter();
        };

        function resetCounter(){
            $scope.lastUpdatedSeconds = 'just now';
            // Color at page load is green
            $scope.customStyle.style = {"color":"green"};
            $rootScope.$broadcast('refreshEvent');
            secondsCounter = 0;
        }

        function getDateTime(){
            var currentDate = new Date();
            var datetime = currentDate.getDate() + "-"
                + (currentDate.getMonth()+1)  + "-"
                + currentDate.getFullYear() + " "
                + currentDate.getHours() + ":"
                + currentDate.getMinutes() + ":"
                + currentDate.getSeconds();
            return datetime;
        }
    }]);