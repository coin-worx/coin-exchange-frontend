'use strict';

var trade = angular.module('tradeModule', []);

trade.config(
    ['$routeProvider',
        function ($routeProvider) {
            console.log('halo');
            $routeProvider
                .when('/trade/overview', {
                    templateUrl: 'views/tradeOverview',
                    controller: 'TradeNavigationController'
                })
                .when('/trade/newOrder', {
                    templateUrl: 'views/tradeNewOrder',
                    controller: 'TradeNavigationController'
                })
                .when('/trade/orders', {
                    templateUrl: 'views/tradeOrders',
                    controller: 'TradeNavigationController'
                })
                .when('/trade/positions', {
                    templateUrl: 'views/tradePositions',
                    controller: 'TradeNavigationController'
                })
                .when('/trade/trades', {
                    templateUrl: 'views/tradeTrades',
                    controller: 'TradeNavigationController'
                })
                .otherwise({
                    redirectTo: '/views/tradeOverview'
                })
        }]);

var blancrockExchangeApp = angular.module('blancrockExchangeApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute',
    'tradeModule'
]);

blancrockExchangeApp.config(
    ['$routeProvider',
        function ($routeProvider) {
            $routeProvider
                .when('/', {
                    templateUrl: 'views/index'
                })
                .when('/account', {
                    templateUrl: 'views/account',
                    controller: 'NavigationController'
                })
                .when('/about', {
                    templateUrl: 'views/about',
                    controller: 'NavigationController'
                })
                .when('/market', {
                    templateUrl: 'views/market',
                    controller: 'NavigationController'
                })
                .when('/help', {
                    templateUrl: 'views/help',
                    controller: 'NavigationController'
                })
                .otherwise({
                    redirectTo: '/'
                });
        }]);