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

    def accountTradePositions() {
        render template: '/account/trade/positions/positions'
    }

    def accountTradeTrades() {
        render template: '/account/trade/trades/trades'
    }

    def accountFunding() {
        render template: '/account/funding/funding'
    }

    def accountSecurity() {
        render template: '/account/security/index'
    }

    def accountSettings() {
        render template: '/account/settings/index'
    }

    def accountHistory() {
        render template: '/account/history/index'
    }

    def accountGetVerified() {
        render template: '/account/getVerified/index'
    }

    def accountFundingAudit() {
        render template: '/account/funding/audit/audit'
    }

    def accountFundingWithdraw() {
        render template: '/account/funding/withdraw/withdraw'
    }

    def accountFundingDeposit() {
        render template: '/account/funding/deposit/deposit'
    }

    def accountSecurityPassword() {
        render template: '/account/security/password/index'
    }

    def accountSecurityTFA() {
        render template: '/account/security/tfa/index'
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

}
