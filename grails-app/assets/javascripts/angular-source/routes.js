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

                .when('/account/trade/overview', 'account.trade.overview')

                .when('/account/trade/newOrder', 'account.trade.newOrder')

                .when('/account/trade/newOrder/openOrders', 'account.trade.newOrder.openOrders')
                .when('/account/trade/newOrder/positions', 'account.trade.newOrder.positions')
                .when('/account/trade/newOrder/orderBook', 'account.trade.newOrder.orderBook')


                .when('/account/trade/orders', 'account.trade.orders')
                .when('/account/trade/positions', 'account.trade.positions')
                .when('/account/trade/trades', 'account.trade.trades')

                .when('/account/funding', 'account.funding')

                .when('/account/funding/deposit', 'account.funding.deposit')
                .when('/account/funding/withdraw', 'account.funding.withdraw')
                .when('/account/funding/audit', 'account.funding.audit')

                .when('/account/security', 'account.security')
                .when('/account/security/password', 'account.security.password')
                .when('/account/security/tfa', 'account.security.tfa')

                .when('/account/settings', 'account.settings')
                .when('/account/history', 'account.history')
                .when('/account/getVerified', 'account.getVerified')

                .when('/market', 'market')
                .when('/marketData', 'marketData')
                .when('/marketData/orderBook', 'marketData.orderBook')

                .when('/about', 'about')
                .when('/help', 'help')

                .segment('account', {
                    templateUrl: 'views/account'
                })

                .within()

                .segment('trade', {
                    default: true,
                    templateUrl: 'views/accountTrade'
                })

                .within()

                .segment('overview', {
                    default: true,
                    templateUrl: 'views/accountTradeOverview'
                })

                .segment('newOrder', {
                    templateUrl: 'views/accountTradeNewOrder'
                })

                .within()

                .segment('openOrders', {
                    default: true,
                    templateUrl: 'views/accountTradeNewOrderOpenOrders'
                })

                .segment('positions', {
                    templateUrl: 'views/accountTradeNewOrderPositions'
                })

                .segment('orderBook', {
                    templateUrl: 'views/accountTradeNewOrderBook'
                })

                .up()

                .segment('orders', {
                    templateUrl: 'views/accountTradeOrders'
                })

                .segment('positions', {
                    templateUrl: 'views/accountTradePositions'
                })

                .segment('trades', {
                    templateUrl: 'views/accountTradeTrades'
                })

                .up()

                .segment('funding', {
                    templateUrl: 'views/accountFunding'
                })

                .within()

                .segment('deposit', {
                    default: true,
                    templateUrl: 'views/accountFundingDeposit'
                })

                .segment('withdraw', {
                    templateUrl: 'views/accountFundingWithdraw'
                })

                .segment('audit', {
                    templateUrl: 'views/accountFundingAudit'
                })

                .up()

                .segment('security', {
                    templateUrl: 'views/accountSecurity'
                })

                .within()

                .segment('password', {
                    default: true,
                    templateUrl: 'views/accountSecurityPassword'
                })

                .segment('tfa', {
                    templateUrl: 'views/accountSecurityTFA'
                })

                .up()

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

                .segment('marketData', {
                    templateUrl: 'views/marketData'
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
        }]);