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

    private String getPathWithPrefix(String path) {
        def prefix = grailsApplication.config.blancrock.backend.login.prefix

        return prefix + path
    }
}
