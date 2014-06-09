//=require angular-source/components/account/trade/newOrder/newOrder.module

'use strict';

angular.module('account.trade.newOrder').service('orderDetailsService', [function () {
  var data;

  return {
    getData: function () {
      return data;
    },

    setData: function (newData) {
      data = newData;
    },

    createNewOrder: function () {
      return $http.post('/api/createNewOrder', this.getData());
    }
  }
}]);