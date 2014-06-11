//=require angular-source/components/account/trade/newOrder/newOrder.module

'use strict';

angular.module('account.trade.newOrder').service('orderDetailsService', ['$http', '$q', function ($http, $q) {
  var data,
    error;

  return {
    getData: function () {
      var deferred = $q.defer();
      deferred.resolve(data);

      console.log(data);
      return deferred.promise;
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
      return $http.post('api/createNewOrder', data);
    },

    getCurrencyPair: function () {
      return $http.get('api/getCurrencyPair');
    }
  }
}]);