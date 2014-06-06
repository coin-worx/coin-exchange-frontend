/**
 * Created with IntelliJ IDEA.
 * User: waqasshah
 * Date: 05/06/14
 * Time: 11:20
 * To change this template use File | Settings | File Templates.
 */

'use strict';

angular.module('marketData.orderBook').service('OrderBookService', [
    '$http', function ($http) {
        return {
            query: function () {
                return $http.get('api/getOrderBook');
            }
        };
    } ]);