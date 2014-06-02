//=require angular-source/components/account/trade/trades/trades.module

'use strict';

angular.module('account.trade.trades').controller('TradesController', [
  '$scope', 'TradesService', function ($scope, tradesService) {
    var loaded = false;

    tradesService.query()
      .success(function (data) {
        console.log({trades: data});
        var formattedString = insertKeys(data);
        $scope.trades = formattedString;
        setPaginationParams($scope.trades.length);
        loaded = true;
      }).error(function () {
        $scope.trades = [];
        loaded = true;
      });

    $scope.isLoaded = function () {
      return !loaded;
    };

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

    function insertKeys(trades) {
      var list = [];

      trades.forEach(function (trade) {
        var tradeObject = {
          TradeId: trade[0],
          ExecutionDateTime: trade[1],
          Price: trade[2],
          Volume: trade[3],
          CurrencyPair: trade[4]
        };
        tradeObject.Cost = tradeObject.Price * tradeObject.Volume;

        list.push(tradeObject);
      });

      return list;
    }

    function updateCost(orders) {
      if (orders.length) {
        orders.forEach(function (order) {
          order['Cost'] = +order['Volume'] * +order['Price'];
        });
      } else {
        alert('something wrong, closed orders is empty');
      }
    }

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