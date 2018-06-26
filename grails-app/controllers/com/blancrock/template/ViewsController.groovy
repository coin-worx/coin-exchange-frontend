/***************************************************************************** 
* Copyright 2016 Aurora Solutions 
* 
*    http://www.aurorasolutions.io 
* 
* Aurora Solutions is an innovative services and product company at 
* the forefront of the software industry, with processes and practices 
* involving Domain Driven Design(DDD), Agile methodologies to build 
* scalable, secure, reliable and high performance products.
* 
* Coin Exchange is a high performance exchange system specialized for
* Crypto currency trading. It has different general purpose uses such as
* independent deposit and withdrawal channels for Bitcoin and Litecoin,
* but can also act as a standalone exchange that can be used with
* different asset classes.
* Coin Exchange uses state of the art technologies such as ASP.NET REST API,
* AngularJS and NUnit. It also uses design patterns for complex event
* processing and handling of thousands of transactions per second, such as
* Domain Driven Designing, Disruptor Pattern and CQRS With Event Sourcing.
* 
* Licensed under the Apache License, Version 2.0 (the "License"); 
* you may not use this file except in compliance with the License. 
* You may obtain a copy of the License at 
* 
*    http://www.apache.org/licenses/LICENSE-2.0 
* 
* Unless required by applicable law or agreed to in writing, software 
* distributed under the License is distributed on an "AS IS" BASIS, 
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
* See the License for the specific language governing permissions and 
* limitations under the License. 
*****************************************************************************/


package com.blancrock.template

/**
 * Created by Vladimir Havenchyk.
 */
class ViewsController {
    def index() {
        render template: '/views/index'
    }

    def market() {
        render template: '/views/market'
    }

    def marketData() {
        render template: '/marketData/marketData'
    }

    def account() {
        render template: '/views/account'
    }

    def help() {
        render template: '/views/help'
    }

    def about() {
        render template: '/views/about'
    }

    def accountTrade() {
        render template: '/account/trade/trade'
    }

    def accountTradeOverview() {
        render template: '/account/trade/overview/index'
    }

    def accountTradeNewOrder() {
        render template: '/account/trade/newOrder/newOrder'
    }

    def accountTradeOrders() {
        render template: '/account/trade/orders/orders'
    }

    def accountTradeShowOrderDetails() {
        render template: '/account/trade/showOrderDetails'
    }

    def accountTradePositions() {
        render template: '/account/trade/positions/positions'
    }

    def accountTradeTrades() {
        render template: '/account/trade/trades/trades'
    }

    def accountTradeTradeDetails() {
        render template: '/account/trade/tradeDetails'
    }

    def accountFunding() {
        render template: '/account/funding/funding'
    }

    def accountSecurity() {
        render template: '/account/security/index'
    }

    def accountSecurityPassword() {
        render template: '/account/security/password/index'
    }

    def accountSecurityTFA() {
        render template: '/account/security/tfa/index'
    }

    def accountSettings() {
        render template: '/account/settings/settings'
    }

    def accountSettingsAccount() {
        render template: '/account/settings/account'
    }

    def accountSettingsNotifications() {
        render template: '/account/settings/notifications'
    }

    def accountSettingsApi() {
        render template: '/account/settings/api'
    }

    def accountSettingsGenerateNewKey() {
        render template: '/account/settings/generateNewKey'
    }

    def accountHistory() {
        render template: '/account/history/history'
    }

    def accountHistoryLedgers() {
        render template: '/account/history/ledgers/ledgers'
    }

    def accountHistoryLedgersDetails() {
        render template: '/account/history/ledgers/ledgerDetails'
    }

    def accountHistoryTrades() {
            render template: '/account/history/trades/trades'
        }
    def accountHistoryOrders() {
                render template: '/account/history/orders/orders'
            }

    def accountGetVerified() {
        render template: '/account/getVerified/index'
    }

    def accountFundingAudit() {
        render template: '/account/funding/audit/audit'
    }

    def accountFundingWithdraw() {
        render template: '/account/funding/withdraw/recentWithdrawalsInterface'
    }

    def accountFundingWithdrawDetails(){
        render template: '/account/funding/withdraw/withdrawDetailsInterface'
    }

    def accountFundingDeposit() {
        render template: '/account/funding/deposit/recentDepositsInterface'
    }

    def accountFundingDepositCurrency(){
        render template: '/account/funding/deposit/depositDetailsInterface'
    }

    def accountTradeNewOrderOpenOrders() {
        render template: '/account/trade/newOrder/newAndOpenOrders'
    }

    def accountTradeNewOrderPositions() {
        render template: '/account/trade/newOrder/positions'
    }

    def accountTradeNewOrderBook() {
        render template: '/account/trade/newOrder/orderBook'
    }

    def accountTradeNewOrderSimple() {
        render template: '/account/trade/newOrder/simpleOrder'
    }

    def accountTradeNewOrderSimpleDetails() {
        render template: '/account/trade/newOrder/orderDetails'
    }

    def accountTradeNewOrderIntermediate() {
        render template: '/account/trade/newOrder/intermediateOrder'
    }

    def accountTradeNewOrderAdvanced() {
        render template: '/account/trade/newOrder/advancedOrder'
    }

    def login() {
        render template: '/login/login'
    }

    def logout() {
        render template: '/login/logout'
    }

    def signUp() {
        render template: '/login/signUp'
    }
}
