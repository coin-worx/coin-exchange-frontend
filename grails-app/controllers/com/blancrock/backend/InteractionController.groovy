package com.blancrock.backend

/**
 * Created by Vladimir Havenchyk.
 */
class InteractionController {
    def queryService

    def getOhlcInfo() {
        Map queryResult = queryService.getOhlcInfo('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getTickerInfo() {
        Map queryResult = queryService.getTickerInfo('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getCurrencyPairs() {
        Map queryResult = queryService.getCurrencyPairs()

        response.status = queryResult.status
        render queryResult.value
    }

    def getRates() {
        Map queryResult = queryService.getRates()

        response.status = queryResult.status
        render queryResult.value
    }

    def queryOpenOrders() {
        Map queryResult = queryService.queryOpenOrders(true, '')

        response.status = queryResult.status
        render queryResult.value
    }

    def queryClosedOrders() {
        Map queryResult = queryService.queryClosedOrders(true, '', '', '', '', '')

        response.status = queryResult.status
        render queryResult.value
    }

    def getTradeHistory() {
        Map queryResult = queryService.getTradeHistory('', '')

        response.status = queryResult.status
        render queryResult.value
    }

    // Gets the details when a trade is clicked
    def getTradeDetails(){
        def orderParams = request.JSON
        String tradeId = orderParams['tradeId']

        Map queryResult = queryService.getTradeDetails(tradeId)

        response.status = queryResult.status
        render queryResult.value
    }

    def createNewOrder() {
        def orderParams = request.JSON
        def order = orderParams['order']

        String currencyPair = order['pair']
        String type = order['orderType']
        String side = order['type']
        BigDecimal volume = new BigDecimal(order['volume'] as String)
        BigDecimal price = 0
        if (type == 'Limit'){
            price = new BigDecimal(order['price'] as String)
        }

        Map queryResult = queryService.createOrder(currencyPair, type, side, volume, price)

        response.status = queryResult.status
        render queryResult.value
    }

    def newOrderSimpleBids() {
        Map queryResult = queryService.newOrderSimpleBids('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def newOrderSimpleAsks() {
        Map queryResult = queryService.newOrderSimpleAsks('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def cancelOrder() {
        def orderParams = request.JSON
        String orderId = orderParams['OrderId']
        
        Map queryResult = queryService.cancelOrder(orderId)

        response.status = queryResult.status
        render queryResult.value
    }

    def showOrderDetails() {
        def orderParams = request.JSON
        //@todo: need to use only style for all calls
        String orderId = orderParams['orderId']
        
        Map queryResult = queryService.showOrderDetails(orderId)

        response.status = queryResult.status
        render queryResult.value
    }

    // Gets teh trades when an order is clicked for order details
    def showTradeDetails() {
        def orderParams = request.JSON
        String orderId = orderParams['orderId']
        
        Map queryResult = queryService.showTradeDetails(orderId)

        response.status = queryResult.status
        render queryResult.value
    }

    def getRecentTrades() {
        Map queryResult = queryService.getRecentTrades('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getBids() {
        Map queryResult = queryService.getBids('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getAsks() {
        Map queryResult = queryService.getAsks('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getDepth() {
        Map queryResult = queryService.getDepth('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getOrderBookCummulativeVolume() {
        Map queryResult = queryService.getOrderBookCummulativeVolume('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getSpread() {
        Map queryResult = queryService.getSpread('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def createNewDepositAddress(){
        Map newAddressQueryResult = queryService.createNewDepositAddress('BTC')

        response.status = newAddressQueryResult.status

        Map addressListQueryResult =  queryService.getDepositAddresses('BTC')
        response.status = addressListQueryResult.status

        render addressListQueryResult.value
    }

    def getDepositLimits(){
        Map queryResult = queryService.getDepositLimits('BTC')

        response.status = queryResult.status
        render queryResult.value
    }

    def getDepositAddresses(){
        Map queryResult = queryService.getDepositAddresses('BTC')

        response.status = queryResult.status
        render queryResult.value
    }

    def getRecentDeposits(){
        def depositParams = request.JSON
        String currency = depositParams['currency']
        Map queryResult = queryService.getRecentDeposits(currency)

        response.status = queryResult.status
        render queryResult.value
    }
}
