package com.blankrock.backend
/**
 * Created by Vladimir Havenchyk.
 */
class QueryService {
    static transactional = false

    def interactionService

    String queryOpenOrders(Boolean includeTrades, String userRefId) {
        String path = '/orders/openorders'
        Map query = [includeTrades: includeTrades, userRefId: userRefId]

        String response = interactionService.makePostRequestToBackend(path, query)

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

        String response = interactionService.makePostRequestToBackend(path, query)

        return response
    }

    String queryTrades(String txId, Boolean includeTrades) {
        String path = '/trades/querytrades'
        Map query = [txId: txId, includeTrades: includeTrades]

        String response = interactionService.makePostRequestToBackend(path, query)

        return response
    }

    String getTradeVolume(String pair) {
        String path = '/trades/tradevolume'
        Map query = [pair: pair]

        String response = interactionService.makePostRequestToBackend(path, query)

        return response
    }

    String createOrder(String pair, String type, String side, BigDecimal volume, BigDecimal price = 0) {
        String path = '/orders/createorder'
        Map query = [pair: pair, type: type, side: side, volume: volume, price: price]

        String response = interactionService.makePostRequestToBackend(path, query)

        return response
    }

    String cancelOrder(String txId) {
        String path = '/orders/cancelorder'
        Map query = [txId: txId]

        String response = interactionService.makePostRequestToBackend(path, query)

        return response
    }

    String getTradeHistory(String offset, String type, Boolean trades, String start, String end) {
        String path = '/trades/tradeshistory'
        Map query = [offset: offset, type: type, trades: trades, start: start, end: end]

        String response = interactionService.makePostRequestToBackend(path, query)

        return response
    }
}
