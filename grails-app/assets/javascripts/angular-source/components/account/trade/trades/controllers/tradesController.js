//=require angular-source/components/account/trade/trades/trades.module

'use strict';

angular.module('account.trade.trades').controller('TradesController', [
  '$scope', 'TradesService', function ($scope, tradesService) {
    $scope.loaded = false;

    tradesService.query()
      .success(function (data) {
        $scope.trades = data;
        setPaginationParams($scope.trades.length);
        $scope.loaded = true;
      }).error(function () {
        $scope.trades = [];
        $scope.loaded = true;
      });

    $scope.sort = {
      predicate: 'TradeId',
      reverse: true
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
    };

    //Sorting params
    function setPaginationParams(totalItems) {
      $scope.currentPage = 1;
      $scope.maxSize = 5;

      $scope.totalItems = totalItems;
      $scope.currentMinIndex = ($scope.currentPage - 1) * 10 + 1;
      $scope.currentMaxIndex = Math.min(totalItems, $scope.currentPage * 10);
    }
  }]);