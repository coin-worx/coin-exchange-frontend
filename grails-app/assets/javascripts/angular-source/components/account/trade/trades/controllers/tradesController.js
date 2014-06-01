//=require angular-source/components/account/trade/trades/trades.module
'use strict';

angular.module('account.trade.trades').controller('TradesController', [
    '$scope', 'TradesService', function ($scope, tradesService) {
        var loaded = false;

        tradesService.query()
            .success(function (data) {
                //updateCost(data);
                console.log(data);
                var formattedString = insertKeys(data);
                $scope.trades = formattedString;
                console.log("Scope: " + $scope.trades + "Corrected: " + formattedString);
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

        /*function updateCost(trades) {
            trades.forEach(function (trade) {
                trade['Cost'] = +trade['Volume'] * +trade['Price'];
            });
        }*/

        function insertKeys(trades) {
          var list = [];
          trades.forEach(function(trade){
              list.push({
                  tradeId   :  trade[0],
                  executionDateTime   :   trade[1],
                  price    :   trade[2],
                  volume :   trade[3],
                  currencyPair  :   trade[4]
              })
          });
          console.log("The list of objects contains: " + list);
          return list;
        }

        $scope.updateSorting = function (columnName) {
            if ($scope.sort.predicate === columnName) {
                $scope.sort.reverse = !$scope.sort.reverse;
            } else {
                $scope.sort.predicate = columnName;
                $scope.sort.reverse = true;
            }
        };


    }]);