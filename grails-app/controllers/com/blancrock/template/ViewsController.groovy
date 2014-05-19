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
        render template: '/account/trade/overview'
    }
    def accountFunding() {
        render template: '/account/funding/deposit/deposit'
    }
    def accountSecurity() {
        render template: '/account/trade/overview'
    }
    def accountSettings() {
        render template: '/account/trade/overview'
    }
    def accountHistory() {
        render template: '/account/trade/overview'
    }
    def accountGetVerified() {
        render template: '/account/trade/overview'
    }

}
