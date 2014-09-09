package com.blancrock.backend

import grails.converters.JSON
import net.sf.json.JSONObject
import org.codehaus.groovy.grails.web.json.JSONArray

/**
 * Created by Vladimir Havenchyk.
 */
class QueryService {
    static transactional = false

    def backendInteractionService
    def jsonHelperService
    def grailsApplication

    Map getOhlcInfo(String currencyPair) {
        String path = getPathWithPrefix('/marketdata/ohlcinfo')

        Map query = [currencyPair: currencyPair]
        Map response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        String bboInfo = getPathWithPrefix('/marketdata/bbo')
        Map bbo = backendInteractionService.makeUnauthorizedGetRequest(bboInfo, query)

        def ohlcResponse = jsonHelperService.ohlcInfoStructuring(response.value, bbo.value)
        return [status: response.status, value: ohlcResponse]
    }

    Map getTickerInfo(String currencyPair) {
        String path = getPathWithPrefix('/marketdata/tickerinfo')

        Map query = [currencyPair: currencyPair]
        Map response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        return [status: response.status, value: response.value]
    }

    Map getCurrencyPairs() {
        String path = getPathWithPrefix('/trades/tradeablecurrencypair')

        Map query = [:]
        Map response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        return [status: response.status, value: response.value]
    }

    Map getRates() {
        String path = getPathWithPrefix('/marketdata/rates')

        Map query = [:]
        Map response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        def jsonOrderBook = jsonHelperService.extractRatesJson(response.value)

        return [value: jsonOrderBook, status: response.status]
    }

    Map queryOpenOrders(Boolean includeTrades, String userRefId) {
        String path = getPathWithPrefix('/orders/openorders')
        Map query = [includeTrades: includeTrades, userRefId: userRefId]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [status: response.status, value: response.value]
    }

    Map queryClosedOrders(Boolean includeTrades,
                          String userRefId,
                          String startTime,
                          String endTime,
                          String offset,
                          String closeTime) {
        String path = getPathWithPrefix('/orders/closedorders')
        Map query = [
                includeTrades: includeTrades,
                userRefId    : userRefId,
                startTime    : startTime,
                endTime      : endTime,
                offset       : offset,
                closeTime    : closeTime
        ]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [status: response.status, value: response.value]
    }

    Map queryTrades(String txId, Boolean includeTrades) {
        String path = getPathWithPrefix('/trades/querytrades')
        Map query = [txId: txId, includeTrades: includeTrades]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [status: response.status, value: response.value]
    }

    Map getTradeVolume(String pair) {
        String path = getPathWithPrefix('/trades/tradevolume')
        Map query = [pair: pair]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [status: response.status, value: response.value]
    }

    Map newOrderSimpleBids(String currencyPair) {
        String path = getPathWithPrefix('/marketdata/orderbook')

        Map query = [currencyPair: currencyPair]
        Map response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        def jsonOrderBook = jsonHelperService.extractNewOrderSimpleBidsJson(response.value)

        return [status: response.status, value: jsonOrderBook]
    }

    Map newOrderSimpleAsks(String currencyPair) {
        String path = getPathWithPrefix('/marketdata/orderbook')

        Map query = [currencyPair: currencyPair]
        Map response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        def jsonOrderBook = jsonHelperService.extractNewOrderSimpleAsksJson(response.value)

        return [status: response.status, value: jsonOrderBook]
    }

    Map showOrderDetails(String orderId) {
        String path = getPathWithPrefix('/orders/queryorders')

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, orderId)

        return [value: response.value, status: response.status]
    }

    // Gets teh trades when an order is clicked for order details
    Map showTradeDetails(String orderId) {
        String path = getPathWithPrefix('/trades/querytrades')

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, orderId)

        String jsonWithKeys = jsonHelperService.addNecessaryKeysToTradeHistoryJson(response.value)

        return [value: jsonWithKeys, status: response.status]
    }

    // Gets the details when a trade is clicked
    Map getTradeDetails(String tradeId) {
        String path = getPathWithPrefix('/trades/tradedetails')

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, tradeId)

        return [value: response.value, status: response.status]
    }

    Map createOrder(String pair, String type, String side, BigDecimal volume, BigDecimal price = 0) {
        String path = getPathWithPrefix('/orders/createorder')
        Map query = [pair: pair, type: type, side: side, volume: volume, price: price]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [status: response.status, value: response.value]
    }

    Map cancelOrder(String orderId) {
        String path = getPathWithPrefix('/orders/cancelorder')

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, orderId)

        return [status: response.status, value: response.value]
    }

    Map getTradeHistory(String start, String end) {
        String path = getPathWithPrefix('/trades/tradehistory')
        Map query = [start: start, end: end]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        String jsonWithKeys = jsonHelperService.addNecessaryKeysToTradeHistoryJson(response.value)

        return [value: jsonWithKeys, status: response.status]
    }

    Map getRecentTrades(String currencyPair) {
        String path = getPathWithPrefix('/trades/recenttrades')

        Map query = [currencyPair: currencyPair]
        Map response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        def jsonOrderBook = jsonHelperService.addKeysToRecentTradesJson(response.value)

        return [value: jsonOrderBook, status: response.status]
    }

    Map getBids(String currencyPair) {
        String path = getPathWithPrefix('/marketdata/orderbook')

        Map query = [currencyPair: currencyPair]
        Map response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        def jsonOrderBook = jsonHelperService.extractBidsJson(response.value)

        return [value: jsonOrderBook, status: response.status]
    }

    Map getAsks(String currencyPair) {
        String path = getPathWithPrefix('/marketdata/orderbook')

        Map query = [currencyPair: currencyPair]
        Map response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        def jsonOrderBook = jsonHelperService.extractAsksJson(response.value)

        return [value: jsonOrderBook, status: response.status]
    }

    Map getDepth(String currencyPair) {
        String path = getPathWithPrefix('/marketdata/depth')
        Map query = [currencyPair: currencyPair]

        Map response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getOrderBookCummulativeVolume(String currencyPair) {
        String path = getPathWithPrefix('/marketdata/orderbook')
        Map query = [currencyPair: currencyPair]

        Map response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        def jsonBids = jsonHelperService.extractBidsCummulativeVolumeJson(response.value)
        def jsonAsks = jsonHelperService.extractAsksCummulativeVolumeJson(response.value)

        JSONArray orderbookArray = new JSONArray()
        JSONObject bidsObject = new JSONObject()
        bidsObject.put("Bids", jsonBids)

        JSONObject asksObject = new JSONObject()
        asksObject.put("Asks", jsonAsks)

        orderbookArray.put(bidsObject)
        orderbookArray.put(asksObject)

        return [status: response.status, value: orderbookArray as JSON]
    }

    Map getSpread(String currencyPair) {
        String path = getPathWithPrefix('/marketData/spread')
        Map query = [currencyPair: currencyPair]

        Map response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map createNewDepositAddress(String currency){
        String path = getPathWithPrefix('/funds/createdepositaddress')
        Map query = [currency: currency]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getDepositLimits(String currency){
        String path = getPathWithPrefix('/funds/getdepositlimits')
        Map query = [currency: currency]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getDepositAddresses(String currency){
        String path = getPathWithPrefix('/funds/getdepositaddresses')
        Map query = [currency: currency]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getRecentDeposits(String currency){
        String path = getPathWithPrefix('/funds/getrecentdeposits')
        Map query = [currency: currency]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getRecentWithdrawals(String currency){
        String path = getPathWithPrefix('/funds/getrecentwithdrawals')
        Map query = [currency: currency]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map saveWithdrawAddress(String currency, String address, String description){
        String path = getPathWithPrefix('/funds/addwithdrawaddress')
        Map query = [currency: currency, bitcoinAddress: address, description: description]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getWithdrawLimits(String currency){
        String path = getPathWithPrefix('/funds/getwithdrawlimits')
        Map query = [currency: currency]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getWithdrawAddresses(String currency){
        String path = getPathWithPrefix('/funds/getwithdrawaddresses')
        Map query = [currency: currency]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map commitWithdraw(String currency, String bitcoinAddress, BigDecimal amount){
        String path = getPathWithPrefix('/funds/commitwithdraw')
        Map query = [currency: currency, isCryptoCurrency: true, bitcoinAddress: bitcoinAddress, amount: amount]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map deleteWithdrawAddress(String bitcoinAddress){
        String path = getPathWithPrefix('/funds/deletewithdrawaddress')
        Map query = [bitcoinAddress: bitcoinAddress]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map cancelWithdraw(String withdrawId){
        String path = getPathWithPrefix('/funds/cancelWithdraw')
        Map query = [withdrawId: withdrawId]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getLedgersForCurrency(String currency){
        String path = getPathWithPrefix('/funds/getledgers')
        Map query = [currency: currency]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getAllLedgers(String currency){
        String path = getPathWithPrefix('/funds/getallledgers')
        Map query = [:]

        Map response = backendInteractionService.makeAuthorizedGetRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getLedgerDetails(String ledgerId){
        String path = getPathWithPrefix('/funds/getledgerdetails')
        Map query = [ledgerId: ledgerId]

        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getDepositTierLimits(){
        String path = getPathWithPrefix('/funds/getDepositTierLimits')

        Map query = [:]
        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getWithdrawTierLimits(){
        String path = getPathWithPrefix('/funds/getWithdrawTierLimits')

        Map query = [:]
        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getTierStatus(){
        String path = getPathWithPrefix('/private/user/tiers')

        Map query = [:]
        Map response = backendInteractionService.makeAuthorizedGetRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getTier1Details(){
        String path = getPathWithPrefix('/private/user/tier1')

        Map query = [:]
        Map response = backendInteractionService.makeAuthorizedGetRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getTier2Details(){
        String path = getPathWithPrefix('/private/user/tier2')

        Map query = [:]
        Map response = backendInteractionService.makeAuthorizedGetRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getTier3Details(){
        String path = getPathWithPrefix('/private/user/tier3')

        Map query = [:]
        Map response = backendInteractionService.makeAuthorizedGetRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map applyForTier1(String fullName, String dateOfBirth, String country, String phoneNumber){
        String path = getPathWithPrefix('/private/user/applyfortier1')

        Map query = [fullName:fullName, dateOfBirth: dateOfBirth, country: country, phoneNumber: phoneNumber]
        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map applyForTier2(String addressLine1, String addressLine2, String addressLine3, String state, String city, String zipCode){
        String path = getPathWithPrefix('/private/user/applyfortier2')

        Map query = [addressLine1:addressLine1, addressLine2:addressLine2, addressLine3:addressLine3,
                city: city, state: state, zipCode: zipCode]
        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map applyForTier3(String nationalId, String documentType, String fileName, String ssn){
        String path = getPathWithPrefix('/private/user/applyfortier3')

        Map query = [ssn:ssn, nin:nationalId, documentType: documentType, fileName: fileName]
        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getAccountSettings(){
        String path = getPathWithPrefix('/private/user/accountsettings')

        Map query = [:]
        Map response = backendInteractionService.makeAuthorizedGetRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map changeSettings(String email, String pgpPublicKey, String language, String timeZone, String isDefaultAutoLogout,
                      String autoLogoutMinutes){
        String path = getPathWithPrefix('/private/user/changesettings')

        Map query = [email: email, pgpPublicKey: pgpPublicKey, language: language, timeZone: timeZone, isDefaultAutoLogout: isDefaultAutoLogout,
        autoLogoutMinutes: autoLogoutMinutes]
        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map getSecurityKeys(){
        String path = getPathWithPrefix('/private/user/api/list')

        Map query = [:]
        Map response = backendInteractionService.makeAuthorizedGetRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map createNewKey(String keyDescription, boolean enableExpirationDate, String expirationDateTime,
                    boolean enableStartDate, String queryStartDateTime, boolean enableEndDate,
                    String queryEndDateTime, List permissions){
        String path = getPathWithPrefix('/private/user/api/create')

        Map query = [keyDescription: keyDescription, enableExpirationDate: enableExpirationDate, expirationDateTime: expirationDateTime,
                 enableStartDate: enableStartDate, startDateTime: queryStartDateTime, enableEndDate: enableEndDate,
                endDateTime: queryEndDateTime, securityKeyPermissions: permissions]
        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map sendNotifications(boolean adminEmails, boolean newLetterEmails){
        String path = getPathWithPrefix('/private/user/api/submitemailsettings')

        Map query = [AdministrativeEmails: adminEmails, NewsLetterEmails: newLetterEmails]
        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    Map changePassword(String oldPassword, String newPassword){
        String path = getPathWithPrefix('/private/user/changepassword')

        Map query = [OldPassword: oldPassword, NewPassword: newPassword]
        Map response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return [value: response.value, status: response.status]
    }

    private String getPathWithPrefix(String path) {
        def prefix = grailsApplication.config.blancrock.backend.login.prefix

        return prefix + path
    }
}
