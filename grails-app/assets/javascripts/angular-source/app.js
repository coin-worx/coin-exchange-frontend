'use strict';

var trade = angular.module('tradeModule', []);

trade.config(function($routeProvider) {
   console.log('halo');
    $routeProvider
        .when('/trade/overview', {
            templateUrl: 'views/trade/overview',
            controller: 'TradeNavigationController'
        })
        .when('/trade/newOrder', {
            templateUrl: 'views/trade/overview',
            controller: 'TradeNavigationController'
        })
        .when('/trade/orders', {
            templateUrl: 'views/trade/overview',
            controller: 'TradeNavigationController'
        })
        .when('/trade/positions', {
            templateUrl: 'views/trade/overview',
            controller: 'TradeNavigationController'
        })
        .when('/trade/trades', {
            templateUrl: 'views/trade/overview',
            controller: 'TradeNavigationController'
        })
        .otherwise({
            redirectTo: '/trade/overview'
        })
});

var blancrockExchangeApp = angular.module('blancrockExchangeApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute',
    'tradeModule'
]);

blancrockExchangeApp.config(function ($routeProvider) {
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
});