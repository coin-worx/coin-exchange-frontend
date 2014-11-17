//=require angular-source/components/account/trade/trades/trades.module

'use strict';

angular.module('account.trade.trades').controller('TradesController', [
  '$scope', '$filter', '$location', 'TradesService', 'TradesSharedService', function ($scope, $filter, $location, tradesService, tradesSharedService) {
    $scope.loaded = false;
    $scope.filteredTrades = [];
    var previousTrades = [];

    $scope.$on('refreshEvent', function(event, data) {
        loadTrades();
    });

    function refreshTradesColorChange(){
         if(previousTrades.length > 0){
             for(var i = 0; i < $scope.trades.length; i++){
                 var containsTrade = false;
                 for(var j = 0; j < previousTrades.length; j++){
                     if(previousTrades[j]['TradeId'] === $scope.trades[i]['TradeId']){
                         containsTrade = true;
                         break;
                     }
                 }
                 if(!containsTrade){
                     $scope.trades[i] = {TradeId: $scope.trades[i]['TradeId'], Price: $scope.trades[i]['Price'], Volume: $scope.trades[i]['Volume'],
                         ExecutionDateTime: $scope.trades[i]['ExecutionDateTime'], CurrencyPair: $scope.trades[i]['CurrencyPair'],
                         Cost: $scope.trades[i]['Cost'], TagNumber: i, ChangeColor: true};
                 }
             }
         }
    }

    loadTrades();
    function loadTrades(){
        tradesService.query()
            .success(function (data) {
                $scope.trades = data;
                refreshTradesColorChange();
                setPaginationParams();
                recalculateMinAndMax();
                filterCollection();
                $scope.loaded = true;
                previousTrades = $scope.trades;
            }).error(function () {
                $scope.trades = [];
                $scope.loaded = true;
            });
    }

      $scope.setTradeIdAsUrlParameter = function(tradeId){
                 $scope.locationPath = '#/account/trade/tradeDetails?tradeid=' + tradeId;
             }

    $scope.sort = {
      predicate: 'ExecutionDateTime',
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

        $scope.trades = $filter('orderBy')($scope.trades, columnName, $scope.sort.reverse);
        setPaginationParams();
        recalculateMinAndMax();
        filterCollection();
    };

    //Sorting params
    function setPaginationParams() {
      $scope.currentPage = 1;
      $scope.maxSize = 5;
      $scope.totalItems = $scope.trades.length;
    }

    $scope.pageChanged = function () {
      recalculateMinAndMax();
      filterCollection();
    };

    function filterCollection() {
      $scope.filteredTrades = $scope.trades.slice($scope.currentMinIndex, $scope.currentMaxIndex);
    }

    function recalculateMinAndMax() {
      $scope.currentMinIndex = ($scope.currentPage - 1) * 10;
      $scope.currentMaxIndex = Math.min($scope.totalItems, $scope.currentPage * 10);
    }
  }]).directive('tabRightClick',['$parse', function($parse) {
        return function(scope, element, attrs) {
            var fn = $parse(attrs.tabRightClick);
            element.bind('contextmenu', function(event) {
                scope.$apply(function() {
                    //            event.preventDefault();
                    fn(scope, {$event:event});
                });
            });
        };
    }]);