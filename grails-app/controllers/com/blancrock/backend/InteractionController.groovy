package com.blancrock.backend

import grails.converters.JSON

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

        println "order params : $orderParams"
        def order = orderParams.order

        String currencyPair = order.pair
        String type = order.type
        String side = order.side
        BigDecimal volume = new BigDecimal(order.volume as String)
        BigDecimal price = new BigDecimal(order.price as String)

        String response = queryService.createOrder(currencyPair, type, side, volume, price)

        render response
    }

    def getCurrencyPair() {
        String response = queryService.getCurrencyPair()

        render response
    }

    def getRecentTrades() {
        String response = queryService.getRecentTrades('XBTUSD')

        render response
    }

    def getBids() {
        String response = queryService.getBids('XBTUSD')

        render response
    }

    def getAsks() {
        String response = queryService.getAsks('XBTUSD')

        render response
    }
}
