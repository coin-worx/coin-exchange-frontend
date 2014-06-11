package com.blankrock.backend

import grails.converters.JSON
import net.sf.json.JSONObject
import org.codehaus.groovy.grails.web.json.JSONArray

/**
 * Created by Uladzimir_Havenchyk on 6/2/2014.
 */
class JsonHelperService {
    static transactional = false

    String extractRatesJson(String ratesJson) {
        JSONArray ratesJsonArray = JSON.parse(ratesJson)
        JSONArray jsonArray = new JSONArray()

        for (int i = 0; i < ratesJsonArray.length(); i++){
            String currencyPair = ratesJsonArray.getJSONObject(i).getString("<CurrencyPair>k__BackingField")
            double rate = ratesJsonArray.getJSONObject(i).getDouble("<RateValue>k__BackingField")

            JSONObject jsonObject = new JSONObject()
            jsonObject.put('CurrencyPair', currencyPair)
            jsonObject.put('Rate', rate)
            jsonArray.put(jsonObject)
        }

        if (!jsonArray.any())
        {
            jsonArray = null
        }
        return jsonArray as JSON
    }

    String addNecessaryKeysToTradeHistoryJson(String tradesJson) {
        def tradesJsonArray = JSON.parse(tradesJson)

        tradesJsonArray = tradesJsonArray.collect { JSONArray trade ->
            [TradeId: trade[0], ExecutionDateTime: trade[1], Price: trade[2],
             Volume : trade[3], CurrencyPair: trade[4]]
        }

        String resultedJson = updateCost((tradesJsonArray as JSON).toString())

        return resultedJson
    }

    String addKeysToRecentTradesJson(String tradesJson) {
        def tradesJsonArray = JSON.parse(tradesJson)

        JSONArray jsonArray = new JSONArray()
        tradesJsonArray.each {
            JSONObject jsonObject = new JSONObject()
            jsonObject.put('Time', it[0])
            jsonObject.put('Price', it[1])
            jsonObject.put('Volume', it[2])
            jsonArray.put(jsonObject)
        }

        return jsonArray as JSON
    }

    String extractBidsJson(String orderBookJson) {
            def orderBookJsonArray = JSON.parse(orderBookJson)
            def bidBook = orderBookJsonArray["Bids"] as JSONArray

            JSONArray jsonArray = new JSONArray()
            for (int i=0; i < bidBook.length(); i++){
                // Initialize the JSON Object only if there are values received for either bid or ask in the orderbook
                if (bidBook != null){
                    JSONObject jsonObject = new JSONObject()

                    // Insert the value only if Bid for this index is present
                    if (bidBook[i] != null){
                        jsonObject.put("BidVolume", bidBook[i].Volume)
                        jsonObject.put("BidPrice", bidBook[i].Price)
                    }
                    jsonArray.put(jsonObject)
                }
            }
            if (!jsonArray.any())
            {
                jsonArray = null
            }
            return jsonArray as JSON
    }

    String extractAsksJson(String orderBookJson) {
        def orderBookJsonArray = JSON.parse(orderBookJson)
        def askBook = orderBookJsonArray["Asks"] as JSONArray

        JSONArray jsonArray = new JSONArray()
        for (int i=0; i < askBook.length(); i++){
            // Initialize the JSON Object only if there are values received for either bid or ask in the orderbook
            if (askBook != null){
                JSONObject jsonObject = new JSONObject()

                // Insert the value only if Bid for this index is present
                if (askBook[i] != null){
                    jsonObject.put("AskVolume", askBook[i].Volume)
                    jsonObject.put("AskPrice", askBook[i].Price)
                }
                jsonArray.put(jsonObject)
            }
        }
        if (!jsonArray.any())
        {
            jsonArray = null
        }
        return jsonArray as JSON
    }

    private String updateCost(String json) {
        def jsonArray = JSON.parse(json)

        jsonArray.each {
            it['Cost'] = it['Volume'] * it['Price']
        }

        return jsonArray as JSON
    }
}

