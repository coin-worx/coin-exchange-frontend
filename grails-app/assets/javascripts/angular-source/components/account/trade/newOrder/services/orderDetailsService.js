//=require angular-source/components/account/trade/newOrder/newOrder.module

'use strict';

angular.module('account.trade.newOrder').service('orderDetailsService', ['$http', function ($http) {
  var data,
    error;

  return {
    getData: function () {
      return data;
    },

    setData: function (newData) {
      data = newData;
    },

    setError: function (newError) {
      error = newError;
    },

    getError: function () {
      return error;
    },

    createNewOrder: function () {
      return $http.post('api/createNewOrder', this.getData());
    }
  }
}]);