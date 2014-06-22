'use strict';

angular.module('blancrockExchangeApp').config(
  ['$routeProvider', '$routeSegmentProvider', '$httpProvider', '$locationProvider', '$injector',
    function ($routeProvider, $routeSegmentProvider, $httpProvider, $locationProvider, $injector) {

      $routeSegmentProvider.options.autoLoadTemplates = true;

      // Setting routes. This consists of two parts:
      // 1. `when` is similar to vanilla $route `when` but takes segment name instead of params hash
      // 2. traversing through segment tree to set it up

      $routeSegmentProvider

        .when('/', 'index')

        .when('/login', 'login')
        .when('/logout', 'logout')
        .when('/signUp', 'signUp')

        .when('/account', 'account')

        .when('/account/trade', 'account.trade')

        .when('/account/trade/overview', 'account.trade.overview')

        .when('/account/trade/newOrder', 'account.trade.newOrder')

        .when('/account/trade/newOrder/openOrders', 'account.trade.newOrder.openOrders')
        .when('/account/trade/newOrder/positions', 'account.trade.newOrder.positions')
        .when('/account/trade/newOrder/orderBook', 'account.trade.newOrder.orderBook')

        .when('/account/trade/newOrder/simple', 'account.trade.newOrder.simple')
        .when('/account/trade/newOrder/details', 'account.trade.newOrder.details')
        .when('/account/trade/newOrder/intermediate', 'account.trade.newOrder.intermediate')
        .when('/account/trade/newOrder/advanced', 'account.trade.newOrder.advanced')

        .when('/account/trade/orders', 'account.trade.orders')
        .when('/account/trade/positions', 'account.trade.positions')
        .when('/account/trade/trades', 'account.trade.trades')
        .when('/account/trade/showOrderDetails', 'account.trade.showOrderDetails')

        .when('/account/trade/tradeDetails', 'account.trade.tradeDetails')

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

        .when('/about', 'about')
        .when('/help', 'help')

        .segment('login', {
          templateUrl: 'views/login'
        })

        .segment('logout', {
          templateUrl: 'views/logout'
        })

        .segment('signUp', {
          templateUrl: 'views/signUp'
        })

        .segment('account', {
          templateUrl: 'views/account',
          access: 'private'
        })

        .within()

        .segment('trade', {
          default: true,
          templateUrl: 'views/accountTrade',
          access: 'private'
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

        .segment('simple', {
          default: true,
          templateUrl: 'views/accountTradeNewOrderSimple'
        })

        .segment('details', {
          templateUrl: 'views/accountTradeNewOrderSimpleDetails'
        })

        .segment('intermediate', {
          templateUrl: 'views/accountTradeNewOrderIntermediate'
        })

        .segment('advanced', {
          templateUrl: 'views/accountTradeNewOrderAdvanced'
        })

        .up()

        .segment('orders', {
          templateUrl: 'views/accountTradeOrders'
        })

        .segment('showOrderDetails', {
          templateUrl: 'views/accountTradeShowOrderDetails'
        })

        .segment('positions', {
          templateUrl: 'views/accountTradePositions'
        })

        .segment('trades', {
          templateUrl: 'views/accountTradeTrades'
        })

        .segment('tradeDetails', {
          templateUrl: 'views/accountTradeTradeDetails'
        })

        .up()

        .segment('funding', {
          templateUrl: 'views/accountFunding',
          access: 'private'
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
          templateUrl: 'views/accountSecurity',
          access: 'private'
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
          templateUrl: 'views/accountSettings',
          access: 'private'
        })

        .segment('history', {
          templateUrl: 'views/accountHistory',
          access: 'private'
        })

        .segment('getVerified', {
          templateUrl: 'views/accountGetVerified',
          access: 'private'
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

      $httpProvider.interceptors.push(['$q', '$location', '$injector', '$log', function ($q, $location, $injector, $log) {
        return {
          'responseError': function (response) {

            var AuthService = $injector.get('AuthService');

            if (response.status === 401) {
              if (AuthService.isLoggedIn()) {
                AuthService.logoutOnUI();
                $location.path('/login');
              }
            } else if (response.status === 400) {
              $log.error('response status 400');
            } else if (response.status === 500) {
              $log.error('response status 500');
            }

            return $q.reject(response);
          }
        };
      }]);
    }])
  .run(['$rootScope', '$location', 'AuthService', '$routeSegment', '$route',
    function ($rootScope, $location, AuthService, $routeSegment, $route) {
      $rootScope.$on('$locationChangeStart', function (event, nextUrl, prevUrl) {
          var nextPath = $location.path(),
            nextRoute = $route.routes[nextPath],
            nextSegment = nextRoute.segment;


          //todo: handle private routes
          if (AuthService.isLoggedIn() && (nextSegment === 'login' || nextSegment === 'signUp')) {
            $location.path('/');
          } else if (!AuthService.isLoggedIn() && nextSegment === 'logout') {
            $location.path('/');
          }
        }
      );

      $rootScope.$on('routeSegmentChange', function (event, route) {
        var parentSegment = $routeSegment.chain[0],
          access = parentSegment.params.access;

        if (!AuthService.isLoggedIn() && access === 'private') {
          $location.path('/login');
        }
      });
    }]);