package com.blancrock.backend

import javax.persistence.Convert

/**
 * Created by Vladimir Havenchyk.
 */
class InteractionController {
    def queryService

    def getOhlcInfo() {
        Map queryResult = queryService.getOhlcInfo('BTCUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getTickerInfo() {
        Map queryResult = queryService.getTickerInfo('BTCUSD')

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
        Map queryResult = queryService.newOrderSimpleBids('BTCUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def newOrderSimpleAsks() {
        Map queryResult = queryService.newOrderSimpleAsks('BTCUSD')

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
        Map queryResult = queryService.getRecentTrades('BTCUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getBids() {
        Map queryResult = queryService.getBids('BTCUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getAsks() {
        Map queryResult = queryService.getAsks('BTCUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getDepth() {
        Map queryResult = queryService.getDepth('BTCUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getOrderBookCummulativeVolume() {
        Map queryResult = queryService.getOrderBookCummulativeVolume('BTCUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getSpread() {
        Map queryResult = queryService.getSpread('BTCUSD')

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

    def getRecentWithdrawals(){
        def withdrawParams = request.JSON
        String currency = withdrawParams['currency']
        Map queryResult = queryService.getRecentWithdrawals(currency)

        response.status = queryResult.status
        render queryResult.value
    }

    def saveWithdrawAddress(){
        def withdrawParams = request.JSON
        String currency = withdrawParams['currency']
        String bitcoinAddress = withdrawParams['bitcoinAddress']
        String description = withdrawParams['description']
        // ToDo: Provide and get the paarameters and pass them on
        Map queryResult = queryService.saveWithdrawAddress(currency, bitcoinAddress, description)

        response.status = queryResult.status
        render queryResult.value
    }

    def getWithdrawLimits(){
        def withdrawParams = request.JSON
        String currency = withdrawParams['currency']
        Map queryResult = queryService.getWithdrawLimits(currency)

        response.status = queryResult.status
        render queryResult.value
    }

    def getWithdrawAddresses(){
        def withdrawParams = request.JSON
        String currency = withdrawParams['currency']
        Map queryResult = queryService.getWithdrawAddresses(currency)

        response.status = queryResult.status
        render queryResult.value
    }

    def commitWithdraw(){
        def withdrawParams = request.JSON
        String currency = withdrawParams['currency']
        String bitcoinAddress = withdrawParams['bitcoinAddress']

        String amountString = withdrawParams['amount']
        BigDecimal amount = amountString.toBigDecimal();
        Map queryResult = queryService.commitWithdraw(currency, bitcoinAddress, amount)

        response.status = queryResult.status
        render queryResult.value
    }

    def deleteWithdrawAddress(){
        def withdrawParams = request.JSON
        String bitcoinAddress = withdrawParams['bitcoinAddress']
        Map queryResult = queryService.deleteWithdrawAddress(bitcoinAddress)

        response.status = queryResult.status
        render queryResult.value
    }

    def cancelWithdraw(){
        def withdrawParams = request.JSON
        String bitcoinAddress = withdrawParams['withdrawId']
        Map queryResult = queryService.cancelWithdraw(bitcoinAddress)

        response.status = queryResult.status
        render queryResult.value
    }

    def getLedgers(){
        def ledgerParams = request.JSON
        String currency = ledgerParams['currency']
        Map queryResult = queryService.getLedgers(currency)

        response.status = queryResult.status
        render queryResult.value
    }

    def getLedgerDetails(){
        def ledgerParams = request.JSON
        String ledgerId = ledgerParams['ledgerId']
        Map queryResult = queryService.getLedgerDetails(ledgerId)

        response.status = queryResult.status
        render queryResult.value
    }
}
