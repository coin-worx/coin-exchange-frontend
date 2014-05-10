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
}
