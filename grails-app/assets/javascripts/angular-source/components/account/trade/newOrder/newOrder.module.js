'use strict';

angular.module('account.trade.newOrder', [])
  .constant('constants', {
    side: {
      BUY: 'Buy',
      SELL: 'Sell'
    },
    type: {
      LIMIT: 'Limit',
      MARKET: 'Market'
    },
    btnClass: {
      SUCCESS: 'btn-success',
      DANGER: 'btn-danger'
    },
    sign: {
      MULT: '×',
      DIV: '÷'
    }
  });