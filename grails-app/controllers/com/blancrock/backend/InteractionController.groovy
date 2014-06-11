package com.blancrock.backend

/**
 * Created by Vladimir Havenchyk.
 */
class InteractionController {
    def queryService

    def getTickerInfo() {
        String response = queryService.getTickerInfo('XBTUSD')

        render response
    }

    def getCurrencyPairs() {
        String response = queryService.getCurrencyPairs()

        render response
    }

    def getRates() {
        String response = queryService.getRates()

        render response
    }

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
