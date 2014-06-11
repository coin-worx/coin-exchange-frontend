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
        def orderParams = request.JSON
        def order = orderParams.order

        String currencyPair = order.pair
        String type = order.orderType
        String side = order.type
        BigDecimal volume = new BigDecimal(order.volume as String)
        BigDecimal price = new BigDecimal(order.price as String)

        String response = queryService.createOrder(currencyPair, type, side, volume, price)

        render response
    }

    def getCurrencyPair() {
        String response = queryService.getCurrencyPair()

        println "response: $response"
        render response
    }
}
