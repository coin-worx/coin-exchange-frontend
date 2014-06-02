package com.blankrock.backend

import grails.converters.JSON
import org.codehaus.groovy.grails.web.json.JSONArray

/**
 * Created by Uladzimir_Havenchyk on 6/2/2014.
 */
class JsonHelperService {
    static transactional = false

    String addNecessaryKeysToTradeHistoryJson(String tradesJson) {
        def tradesJsonArray = JSON.parse(tradesJson)

        tradesJsonArray = tradesJsonArray.collect { JSONArray trade ->
            [TradeId: trade[0], ExecutionDateTime: trade[1], Price: trade[2],
             Volume : trade[3], CurrencyPair: trade[4]]
        }

        String resultedJson = updateCost((tradesJsonArray as JSON).toString())

        return resultedJson
    }

    private String updateCost(String json) {
        def jsonArray = JSON.parse(json)

        jsonArray.each {
            it['Cost'] = it['Volume'] * it['Price']
        }

        return jsonArray as JSON
    }
}
