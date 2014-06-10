package com.blankrock.backend

import grails.converters.JSON
import net.sf.json.JSONObject
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

    String parseOrderBookJson(String currencyPair, String orderBookJson) {
        try {
        def orderBookJsonArray = JSON.parse(orderBookJson)
        def askBook = orderBookJsonArray["Asks"] as JSONArray
        def bidBook = orderBookJsonArray["Bids"] as JSONArray

        JSONArray jsonArray = new JSONArray()
        for (int i=0; i < Math.max(askBook.length(), bidBook.length()); i++){
            // Initialize the JSON Object only if there are values received for either bid or ask in the orderbook
            if (askBook != null || bidBook != null){
                JSONObject jsonObject = new JSONObject()

                // Insert the value only if Ask for this index is present
                if (askBook[i] != null){
                    jsonObject.put("AskVolume", askBook[i].Volume)
                    jsonObject.put("AskPrice", askBook[i].Price)
                }
                // Otherwise insert 0 a this index will be shown next to the Bids
                else{
                    jsonObject.put("AskVolume", 0)
                    jsonObject.put("AskPrice", 0)
                }
                // Insert the value only if Bid for this index is present
                if (bidBook[i] != null){
                    jsonObject.put("BidVolume", bidBook[i].Volume)
                    jsonObject.put("BidPrice", bidBook[i].Price)
                }
                // Otherwise insert 0 a this index will be shown next to the Asks
                else{
                    jsonObject.put("BidVolume", 0)
                    jsonObject.put("BidPrice", 0)
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
        catch (Exception ex){
             log.error(ex)
        }
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

