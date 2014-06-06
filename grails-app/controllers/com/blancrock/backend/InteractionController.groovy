package com.blancrock.backend

/**
 * Created by Vladimir Havenchyk.
 */
class InteractionController {
    def queryService

    def queryOpenOrders() {
        String response = queryService.queryOpenOrders(true, '')

        render response
    }

    def queryClosedOrders() {
        String response = queryService.queryClosedOrders(true, '', '', '', '', '')

        render response
    }

    def getTradeHistory() {
        String response = queryService.getTradeHistory('', '')

        render response
    }

    def getOrderBook() {
        String response = queryService.getOrderBook('XBTUSD')

        render response
    }
}
