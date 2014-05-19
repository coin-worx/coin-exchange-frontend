'use strict';

angular.module('blancrockExchangeApp').config(
    ['$routeProvider', '$routeSegmentProvider',
        function ($routeProvider, $routeSegmentProvider) {

            $routeSegmentProvider.options.autoLoadTemplates = true;

            // Setting routes. This consists of two parts:
            // 1. `when` is similar to vanilla $route `when` but takes segment name instead of params hash
            // 2. traversing through segment tree to set it up

            $routeSegmentProvider

                .when('/', 'index')
                .when('/account', 'account')
                .when('/account/trade', 'account.trade')
                .when('/account/funding', 'account.funding')
                .when('/account/security', 'account.security')
                .when('/account/settings', 'account.settings')
                .when('/account/history', 'account.history')
                .when('/account/getVerified', 'account.getVerified')

//                .when('/section1/prefs', 's1.prefs')
//                .when('/section1/:id', 's1.itemInfo')
//                .when('/section1/:id/X', 's1.itemInfo.tab1')
//                .when('/section1/:id/Y', 's1.itemInfo.tab2')

                .when('/market', 'market')
//                .when('/section2/:id',      's2.itemInfo')

                .when('/about', 'about')
                .when('/help', 'help')

                .segment('account', {
                    templateUrl: 'views/account'
                })

                .within()

                .segment('trade', {
                    templateUrl: 'views/accountTrade'
                })

                .segment('funding', {
                    templateUrl: 'views/accountFunding'
                })

                .segment('security', {
                    templateUrl: 'views/accountSecurity'
                })

                .segment('settings', {
                    templateUrl: 'views/accountSettings'
                })

                .segment('history', {
                    templateUrl: 'views/accountHistory'
                })

                .segment('getVerified', {
                    templateUrl: 'views/accountGetVerified'
                })

                .up()

                .segment('market', {
                    templateUrl: 'views/market'
                })

                .segment('help', {
                    templateUrl: 'views/help'
                })

                .segment('about', {
                    templateUrl: 'views/about'
                })
                .segment('index', {
                    templateUrl: 'views/index'
                });

            $routeProvider.otherwise({
                redirectTo: '/'
            });

//             $routeProvider
//             .when('/', {
//             templateUrl: 'views/index'
//             })
//             .when('/account', {
//             templateUrl: 'views/account',
//             controller: 'NavigationController'
//             })
//             .when('/about', {
//             templateUrl: 'views/about',
//             controller: 'NavigationController'
//             })
//             .when('/market', {
//             templateUrl: 'views/market',
//             controller: 'NavigationController'
//             })
//             .when('/help', {
//             templateUrl: 'views/help',
//             controller: 'NavigationController'
//             })
//             .otherwise({
//             redirectTo: '/'
//             });
        }]);