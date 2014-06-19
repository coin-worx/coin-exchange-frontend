package com.blancrock.backend
/**
 * Created by Vladimir Havenchyk.
 */
class QueryService {
    static transactional = false

    def backendInteractionService
    def jsonHelperService

    String getTickerInfo(String currencyPair){
        String path = '/login/v1/marketdata/tickerinfo'

        Map query = [currencyPair: currencyPair]
        String response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        return response
    }

    String getCurrencyPairs(){
        String path = '/login/v1/trades/tradeablecurrencypair'

        Map query = [:]
        String response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        return response
    }

    String getRates(){
        String path = '/login/v1/marketdata/rates'

        Map query = [:]
        String response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        def jsonOrderBook = jsonHelperService.extractRatesJson(response)

        return jsonOrderBook
    }

    String queryOpenOrders(Boolean includeTrades, String userRefId) {
        String path = '/login/v1/orders/openorders'
        Map query = [includeTrades: includeTrades, userRefId: userRefId]

        String response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return response
    }

    String queryClosedOrders(Boolean includeTrades,
                             String userRefId,
                             String startTime,
                             String endTime,
                             String offset,
                             String closeTime) {
        String path = '/login/v1/orders/closedorders'
        Map query = [
                includeTrades: includeTrades,
                userRefId    : userRefId,
                startTime    : startTime,
                endTime      : endTime,
                offset       : offset,
                closeTime    : closeTime
        ]

        String response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return response
    }

    String queryTrades(String txId, Boolean includeTrades) {
        String path = '/login/v1/trades/querytrades'
        Map query = [txId: txId, includeTrades: includeTrades]

        String response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return response
    }

    String getTradeVolume(String pair) {
        String path = '/login/v1/trades/tradevolume'
        Map query = [pair: pair]

        String response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return response
    }

    String createOrder(String pair, String type, String side, BigDecimal volume, BigDecimal price = 0) {
        String path = '/login/v1/orders/createorder'
        Map query = [pair: pair, type: type, side: side, volume: volume, price: price]

        String response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        return response
    }

    String cancelOrder(String orderId) {
        String path = '/login/v1/orders/cancelorder'

        //@todo: invoke correct method
        String response = backendInteractionService.makeStringParamPostRequestToBackend(path, orderId)

        return response
    }

    String getTradeHistory(String start, String end) {
        String path = '/login/v1/trades/tradehistory'
        Map query = [start: start, end: end]

        String response = backendInteractionService.makeAuthorizedPostRequest(path, query)

        String jsonWithKeys = jsonHelperService.addNecessaryKeysToTradeHistoryJson(response)

        return jsonWithKeys
    }

    String getRecentTrades(String currencyPair){
        String path = '/login/v1/trades/recenttrades'

        Map query = [currencyPair: currencyPair]
        String response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        def jsonOrderBook = jsonHelperService.addKeysToRecentTradesJson(response)

        return jsonOrderBook
    }

    String getBids(String currencyPair){
        String path = '/login/v1/marketdata/orderbook'

        Map query = [currencyPair: currencyPair]
        String response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        def jsonOrderBook = jsonHelperService.extractBidsJson(response)

        return jsonOrderBook
    }

    String getAsks(String currencyPair){
        String path = '/login/v1/marketdata/orderbook'

        Map query = [currencyPair: currencyPair]
        String response = backendInteractionService.makeUnauthorizedGetRequest(path, query)

        def jsonOrderBook = jsonHelperService.extractAsksJson(response)

        return jsonOrderBook
    }
}
