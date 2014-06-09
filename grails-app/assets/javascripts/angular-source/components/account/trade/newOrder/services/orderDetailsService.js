//=require angular-source/components/account/trade/newOrder/controllers/newOrderSimple

'use strict';

angular.module('account.trade.newOrder').service('orderDetailsService', [function () {
  var data;

  return {
    getData: function () {
      return data;
    },

    setData: function (newData) {
      data = newData;
    }
  }
}]);