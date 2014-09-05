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
        if (newAddressQueryResult.status == 500 && newAddressQueryResult.value == ""){
            render "Too many addresses";
        }
        else{
            Map addressListQueryResult =  queryService.getDepositAddresses('BTC')
            response.status = addressListQueryResult.status

            render addressListQueryResult.value
        }
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

    def getDepositTierLimits(){
        Map queryResult = queryService.getDepositTierLimits()

        response.status = queryResult.status
        render queryResult.value
    }

    def getWithdrawTierLimits(){
        Map queryResult = queryService.getWithdrawTierLimits()

        response.status = queryResult.status
        render queryResult.value
    }

    def getTierStatus(){
        Map queryResult = queryService.getTierStatus()

        response.status = queryResult.status
        render queryResult.value
    }

    def getTier1Details(){
        Map queryResult = queryService.getTier1Details()

        response.status = queryResult.status
        render queryResult.value
    }

    def getTier2Details(){
        Map queryResult = queryService.getTier2Details()

        response.status = queryResult.status
        render queryResult.value
    }

    def getTier3Details(){
        Map queryResult = queryService.getTier3Details()

        response.status = queryResult.status
        render queryResult.value
    }

    def applyForTier1(){
        def tier1Params = request.JSON
        String fullName = tier1Params['fullName']
        String dateOfBirth = tier1Params['dateOfBirth']
        String country = tier1Params['country']
        String phoneNumber = tier1Params['phoneNumber']
        Map queryResult = queryService.applyForTier1(fullName, dateOfBirth, country, phoneNumber)

        response.status = queryResult.status
        render queryResult.value
    }

    def applyForTier2(){
        def tier2Params = request.JSON
        String addressLine1 = tier2Params['addressLine1']
        String addressLine2 = tier2Params['addressLine2']
        String addressLine3 = tier2Params['addressLine3']
        String state = tier2Params['state']
        String city = tier2Params['city']
        String zip = tier2Params['zip']
        Map queryResult = queryService.applyForTier2(addressLine1, addressLine2, addressLine3, state, city, zip)

        response.status = queryResult.status
        render queryResult.value
    }

    def applyForTier3(){
        def tier3Params = request.JSON
        String nationalId = tier3Params['nationalId']
        String documentType = tier3Params['documentType']
        String fileName = tier3Params['fileName']
        String ssn = tier3Params['ssn']
        Map queryResult = queryService.applyForTier3(nationalId, documentType, fileName, ssn)

        response.status = queryResult.status
        render queryResult.value
    }

    def getAccountSettings(){
        Map queryResult = queryService.getAccountSettings()

        response.status = queryResult.status
        render queryResult.value
    }

    def changeSettings(){
        def settingsParams = request.JSON
        String email = settingsParams['email']
        String pgpPublicKey = settingsParams['pgpPublicKey']
        String language = settingsParams['language']
        String timeZone = settingsParams['timeZone']
        String isDefaultAutoLogout = settingsParams['isDefaultAutoLogout']
        String autoLogoutMinutes = settingsParams['autoLogoutMinutes']
        Map queryResult = queryService.changeSettings(email, pgpPublicKey, language, timeZone, isDefaultAutoLogout, autoLogoutMinutes)

        response.status = queryResult.status
        render queryResult.value
    }
}
