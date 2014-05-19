'use strict';

var trade = angular.module('tradeModule', []);

trade.config(
    ['$routeProvider',
        function ($routeProvider) {
            var baseUrl = '/account/trade';

            $routeProvider
                .when(baseUrl + '/overview', {
                    templateUrl: 'views/tradeOverview',
                    controller: 'TradeNavigationController'
                })
                .when(baseUrl + '/newOrder', {
                    templateUrl: 'views/tradeNewOrder',
                    controller: 'TradeNavigationController'
                })
                .when(baseUrl + '/orders', {
                    templateUrl: 'views/tradeOrders',
                    controller: 'TradeNavigationController'
                })
                .when(baseUrl + '/positions', {
                    templateUrl: 'views/tradePositions',
                    controller: 'TradeNavigationController'
                })
                .when(baseUrl + '/trades', {
                    templateUrl: 'views/tradeTrades',
                    controller: 'TradeNavigationController'
                })
                .otherwise({
                    redirectTo: '/views/tradeOverview'
                })
        }]);