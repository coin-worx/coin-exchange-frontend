//=require angular-source/components/marketData/orderbook/orderbook.module

'use strict';

angular.module('marketData.orderBook').controller('ClosedOrderBookController', [
  '$scope', 'ClosedOrderBookService', function ($scope, closedOrderBookService) {
    var loaded = false;

    closedOrderBookService.query()
      .success(function (data) {
        updateCost(data);
        $scope.orders = data;
        setPaginationParams();
        recalculateMinAndMax();
        filterCollection();

        $scope.$parent.closedOrdersLoaded = true;
        loaded = true;
      }).error(function () {
        $scope.orders = [];
        loaded = true;
      });

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