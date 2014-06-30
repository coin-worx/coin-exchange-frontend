//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade.orders').controller('NewAndOpenOrdersController', [
  '$scope', 'NewAndOpenOrdersService', 'CancelOrderService', 'OrdersSharedService', function ($scope, newAndOpenOrdersService, cancelOrderService, orderSharedService) {
    var loaded = false;
    var previousOpenOrders = [];

    $scope.$on('refreshEvent', function(event, data) {
        loadOpenOrders();
    });

    loadOpenOrders();
    function loadOpenOrders(){
        newAndOpenOrdersService.query()
            .success(function (data) {
                updateCostRems(data);
                $scope.orders = data;
                refreshTradesColorChange();
                setPaginationParams();
                recalculateMinAndMax();
                filterCollection();

                $scope.$parent.newAndOpenOrdersLoaded = true;
                loaded = true;
                previousOpenOrders = $scope.orders;
            }).error(function () {
                $scope.orders = [];
            });
    }

    function refreshTradesColorChange(){
        if(previousOpenOrders.length > 0){
            for(var i = 0; i < $scope.orders.length; i++){
                var containsTrade = false;
                for(var j = 0; j < previousOpenOrders.length; j++){
                    if(previousOpenOrders[j]['OrderId'] === $scope.orders[i]['OrderId']){
                        containsTrade = true;
                        break;
                    }
                }
                if(!containsTrade){
                    $scope.orders[i] = {Trades: $scope.orders[i]['Trades'], OpenQuantity: $scope.orders[i]['OpenQuantity'],
                        ClosingDateTime: $scope.orders[i]['ClosingDateTime'],
                        Type: $scope.orders[i]['Type'], Volume: $scope.orders[i]['Volume'],
                        OrderId: $scope.orders[i]['OrderId'], TraderId: $scope.orders[i]['TraderId'],
                        CurrencyPair: $scope.orders[i]['CurrencyPair'], Status: $scope.orders[i]['Status'],
                        DateTime: $scope.orders[i]['DateTime'], Side: $scope.orders[i]['Side'],
                        Price: $scope.orders[i]['Price'], AveragePrice: $scope.orders[i]['AveragePrice'],
                        VolumeExecuted: $scope.orders[i]['VolumeExecuted'], CostRem: $scope.orders[i]['CostRem'], ChangeColor: true};
                }
            }
        }
    }

    $scope.deleteOrder = function (order) {
      var index = $scope.orders.indexOf(order);
      cancelOrderService.query(order)
        .success(function (data) {
          $scope.orders.splice(index, 1);
          recalculateMinAndMax();
          filterCollection();
        })
    };

    $scope.setOrderId = function (orderId) {
      orderSharedService.setOrderIdOfOrder(orderId);
    };

    $scope.isLoaded = function () {
      return !loaded;
    };

    $scope.sort = {
      predicate: 'DateTime',
      reverse: true
    };

    $scope.getSortingClass = function (columnName) {
      var className = 'sorting';

      if ($scope.sort.predicate === columnName) {
        $scope.sort.reverse ? className += '_asc' : className += '_desc';
      }

      return className;
    };

    function updateCostRems(orders) {
      if (orders.length) {
        orders.forEach(function (order) {
          order['CostRem'] = +order['OpenQuantity'] * +order['Price'];
        });
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
    function setPaginationParams() {
      $scope.currentPage = 1;
      $scope.maxSize = 5;
      $scope.totalItems = $scope.orders.length;
    }

    $scope.pageChanged = function () {
      recalculateMinAndMax();
      filterCollection();
    };

    function filterCollection() {
      $scope.filteredOrders = $scope.orders.slice($scope.currentMinIndex, $scope.currentMaxIndex);
    }

    function recalculateMinAndMax() {
      $scope.currentMinIndex = ($scope.currentPage - 1) * 10;
      $scope.currentMaxIndex = Math.min($scope.totalItems, $scope.currentPage * 10);
    }

    $scope.setLabelStyles = function (label) {
      var className = 'label-';
      switch (label) {
        case 'PartiallyFilled':
          className += 'important';
          break;
        case 'Accepted':
          className += 'success';
          break;
        case 'Complete':
          className += 'success';
          break;

        default:
          className += 'inverse';
      }

      return className;
    };
  }]);