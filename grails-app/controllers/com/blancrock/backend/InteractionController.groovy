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

    def createNewOrder() {
        println "params: ${params}"
        println "request.json: ${request.JSON}"
        String currencyPair = 'XBTUSD'
        String type = 'limit'
        String side = 'sell'
        Integer volume = 5
        Integer price = 5

        String response = queryService.createOrder(currencyPair, type, side, volume, price)

        render response
    }
}
