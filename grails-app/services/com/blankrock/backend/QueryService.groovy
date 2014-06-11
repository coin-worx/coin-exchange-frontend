package com.blankrock.backend

/**
 * Created by Vladimir Havenchyk.
 */
class QueryService {
    static transactional = false

    def backendInteractionService
    def jsonHelperService

    String queryOpenOrders(Boolean includeTrades, String userRefId) {
        String path = '/orders/openorders'
        Map query = [includeTrades: includeTrades, userRefId: userRefId]

        String response = backendInteractionService.makePostRequestToBackend(path, query)

        return response
    }

    String queryClosedOrders(Boolean includeTrades,
                             String userRefId,
                             String startTime,
                             String endTime,
                             String offset,
                             String closeTime) {
        String path = '/orders/closedorders'
        Map query = [
                includeTrades: includeTrades,
                userRefId    : userRefId,
                startTime    : startTime,
                endTime      : endTime,
                offset       : offset,
                closeTime    : closeTime
        ]

        String response = backendInteractionService.makePostRequestToBackend(path, query)

        return response
    }

    String queryTrades(String txId, Boolean includeTrades) {
        String path = '/trades/querytrades'
        Map query = [txId: txId, includeTrades: includeTrades]

        String response = backendInteractionService.makePostRequestToBackend(path, query)

        return response
    }

    String getTradeVolume(String pair) {
        String path = '/trades/tradevolume'
        Map query = [pair: pair]

        String response = backendInteractionService.makePostRequestToBackend(path, query)

        return response
    }

    String createOrder(String pair, String type, String side, BigDecimal volume, BigDecimal price = 0) {
        String path = '/orders/createorder'
        Map query = [pair: pair, type: type, side: side, volume: volume, price: price]

        String response = backendInteractionService.makePostRequestToBackend(path, query)

        return response
    }

    String cancelOrder(String orderId) {
        String path = '/orders/cancelorder'
        Map query = [orderId: orderId]

        String response = backendInteractionService.makePostRequestToBackend(path, query)

        return response
    }

    String getTradeHistory(String start, String end) {
        String path = '/trades/tradehistory'
        Map query = [start: start, end: end]

        String response = backendInteractionService.makePostRequestToBackend(path, query)

        String jsonWithKeys = jsonHelperService.addNecessaryKeysToTradeHistoryJson(response)

        return jsonWithKeys
    }

    String getRecentTrades(String currencyPair) {
        String path = '/trades/recenttrades'

        Map query = [currencyPair: currencyPair]
        String response = backendInteractionService.makeGetRequestToBackend(path, query)

        def jsonOrderBook = jsonHelperService.addKeysToRecentTradesJson(response)

        return jsonOrderBook
    }

    String getBids(String currencyPair) {
        String path = '/marketdata/orderbook'

        Map query = [currencyPair: currencyPair]
        String response = backendInteractionService.makeGetRequestToBackend(path, query)

        def jsonOrderBook = jsonHelperService.extractBidsJson(response)

        return jsonOrderBook
    }

    String getAsks(String currencyPair) {
        String path = '/marketdata/orderbook'

        Map query = [currencyPair: currencyPair]
        String response = backendInteractionService.makeGetRequestToBackend(path, query)

        def jsonOrderBook = jsonHelperService.extractAsksJson(response)

        return jsonOrderBook
    }

    String getCurrencyPair() {
        String path = '/trades/tradeablecurrencypair'
        Map query = [:]

        String response = backendInteractionService.makeGetRequestToBackend(path, query)

        response = jsonHelperService.getObjectFromJsonArray(response)

        return response
    }
}
