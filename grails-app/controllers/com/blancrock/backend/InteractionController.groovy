package com.blancrock.backend

/**
 * Created by Vladimir Havenchyk.
 */
class InteractionController {
    def queryService

    def queryOpenOrders() {
        def result = queryService.queryOpenOrders(true, '')

        render result
    }

    def queryClosedOrders() {
        def result = queryService.queryClosedOrders(true, '', '', '', '', '')

        render result
    }

    def getTradeHistory() {
        def result = queryService.getTradeHistory('', '')

        render result
    }
}
