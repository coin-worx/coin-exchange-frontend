//=require angular-source/components/account/trade/orders/orders.module

'use strict';

angular.module('account.trade.orders').controller('NewAndOpenOrdersController', [
  '$scope', 'NewAndOpenOrdersService', 'CancelOrderService', function ($scope, newAndOpenOrdersService, cancelOrderService) {
    var loaded = false;

    newAndOpenOrdersService.query()
      .success(function (data) {
        updateCostRems(data);
        $scope.orders = data;
        setPaginationParams();
        recalculateMinAndMax();
        filterCollection();

        $scope.$parent.newAndOpenOrdersLoaded = true;
        loaded = true;
      }).error(function () {
        $scope.orders = [];
      });

        $scope.deleteOrder = function (order) {
        var index = $scope.orders.indexOf(order);
        var orderId = $scope.currentOrderId
        cancelOrderService.query(order)
            .success(function (data) {
                $scope.orders.splice(index, 1);
                recalculateMinAndMax();
                filterCollection();
            }).error(function () {
                $scope.orders = [];
            })
        };

    /*$scope.deleteOrder = function (order) {
      var index = $scope.orders.indexOf(order);
      $scope.orders.splice(index, 1);
      recalculateMinAndMax();
      filterCollection();
    };*/

    $scope.isLoaded = function () {
      return !loaded;
    };

    $scope.sort = {
      predicate: 'OrderId',
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
      } else {
        alert('something wrong, orders is empty');
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