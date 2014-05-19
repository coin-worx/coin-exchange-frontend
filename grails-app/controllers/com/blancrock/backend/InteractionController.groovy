package com.blancrock.backend

import grails.converters.JSON

/**
 * Created by Vladimir Havenchyk.
 */
class InteractionController {
    def queryService

    def test() {
//        String currencyPair = 'XBTUSD'
        def result = queryService.queryOpenOrders(true, "")

        println "result : ${result}"

        render([result: result] as JSON)
    }

    def test1() {
        def result = queryService.queryTrades(true, "")

        println "result : ${result}"

        render([result: result] as JSON)
    }

    def test2() {
        def result = queryService.queryClosedOrders(true, "", "", "", "", "")

        println "result : ${result}"

        render([result: result] as JSON)
    }

}
