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

    // Gets the details when a trade is clicked
    def getTradeDetails(){
        def orderParams = request.JSON
        // ToDo: Get teh trade Id from the Trades page
        def tradeId = orderParams.tradeId
        String response = queryService.getTradeDetails(tradeId)

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

    def cancelOrder() {
        def orderParams = request.JSON
        def orderId = orderParams.OrderId
        String response = queryService.cancelOrder(orderId)

        render response
    }

    def showOrderDetails() {
        def orderParams = request.JSON
        def orderId = orderParams.orderId
        String response = queryService.showOrderDetails(orderId)

        render response
    }

    // Gets teh trades when an order is clicked for order details
    def showTradeDetails() {
        def orderParams = request.JSON
        def orderId = orderParams.orderId
        String response = queryService.showTradeDetails(orderId)

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
