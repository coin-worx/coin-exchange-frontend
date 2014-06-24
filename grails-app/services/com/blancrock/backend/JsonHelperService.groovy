package com.blancrock.backend

import grails.converters.JSON
import net.sf.json.JSONObject
import org.codehaus.groovy.grails.web.json.JSONArray

/**
 * Created by Vladimir Havenchyk.
 */
class JsonHelperService {
    static transactional = false

    String extractRatesJson(String ratesJson) {
        JSONArray ratesJsonArray = JSON.parse(ratesJson)

        if (ratesJsonArray.any()){
            JSONArray jsonArray = new JSONArray()

            for (int i = 0; i < ratesJsonArray.length(); i++){
                String currencyPair = ratesJsonArray.getJSONObject(i).getString("<CurrencyPair>k__BackingField")
                double rate = ratesJsonArray.getJSONObject(i).getDouble("<RateValue>k__BackingField")

                JSONObject jsonObject = new JSONObject()
                jsonObject.put('CurrencyPair', currencyPair)
                jsonObject.put('Rate', rate)
                jsonArray.put(jsonObject)
            }

            return jsonArray as JSON
        }
        else{
            return ratesJsonArray
        }
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

        if (tradesJsonArray.any()){
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
        else{
            return tradesJsonArray
        }
    }

    String extractNewOrderSimpleBidsJson(String orderBookJson) {
        try{
            def orderBookJsonArray = JSON.parse(orderBookJson)
            def bidBook = orderBookJsonArray["Bids"] as JSONArray

            if (bidBook.any()){
                double totalCost = 0;
                double totalVolume = 0;
                JSONArray jsonArray = new JSONArray()
                for (int i=0; i < bidBook.length(); i++){
                    if (bidBook != null){
                        JSONObject jsonObject = new JSONObject()

                        if (bidBook[i] != null){
                            jsonObject.put("BidVolume", bidBook[i].Volume)
                            jsonObject.put("BidPrice", bidBook[i].Price)
                            // Add the current volume to the total volume
                            totalVolume += Double.valueOf(bidBook[i].Volume)
                            jsonObject.put("CmVol", totalVolume)
                            // Calculate cost
                            double cost = Double.valueOf(bidBook[i].Volume) * Double.valueOf(bidBook[i].Price)
                            // Add the current cost in the cummulative cost
                            totalCost += cost
                            jsonObject.put("Cost", cost)
                            jsonObject.put("CmCost", totalCost)
                        }
                        jsonArray.put(jsonObject)
                    }
                }
                return jsonArray as JSON
            }
            else{
                return bidBook
            }
        }
        catch(Exception ex){
            return []
        }
    }

    String extractNewOrderSimpleAsksJson(String orderBookJson) {
        try {
            def orderBookJsonArray = JSON.parse(orderBookJson)
            def askBook = orderBookJsonArray["Asks"] as JSONArray

            if (askBook.any()) {
                double totalCost = 0;
                double totalVolume = 0;
                JSONArray jsonArray = new JSONArray()
                for (int i=0; i < askBook.length(); i++){
                    if (askBook != null){
                        JSONObject jsonObject = new JSONObject()

                        if (askBook[i] != null){
                            jsonObject.put("AskVolume", askBook[i].Volume)
                            jsonObject.put("AskPrice", askBook[i].Price)
                            // Add the current volume to the total volume
                            totalVolume += Double.valueOf(askBook[i].Volume)
                            jsonObject.put("CmVol", totalVolume)
                            // Calculate cost
                            double cost = Double.valueOf(askBook[i].Volume) * Double.valueOf(askBook[i].Price)
                            // Add the current cost in the cummulative cost
                            totalCost += cost
                            jsonObject.put("Cost", cost)
                            jsonObject.put("CmCost", totalCost)
                        }
                        jsonArray.put(jsonObject)
                    }
                }
                return jsonArray as JSON
            }
            else{
                return askBook
            }
        }
        catch(Exception ex){
            return []
        }
    }

    String extractBidsJson(String orderBookJson) {
        try {
            def orderBookJsonArray = JSON.parse(orderBookJson)
            def bidBook = orderBookJsonArray["Bids"] as JSONArray

            if (bidBook.any()){
                JSONArray jsonArray = new JSONArray()
                for (int i=0; i < bidBook.length(); i++){
                    if (bidBook != null){
                        JSONObject jsonObject = new JSONObject()

                        if (bidBook[i] != null){
                            jsonObject.put("BidVolume", bidBook[i].Volume)
                            jsonObject.put("BidPrice", bidBook[i].Price)
                        }
                        jsonArray.put(jsonObject)
                    }
                }
                return jsonArray as JSON
            }
            else{
                return bidBook
            }
        }
        catch(Exception ex){
            return []
        }
    }

    String extractAsksJson(String orderBookJson) {
        try{
            def orderBookJsonArray = JSON.parse(orderBookJson)
            def askBook = orderBookJsonArray["Asks"] as JSONArray

            if (askBook.any()) {
                JSONArray jsonArray = new JSONArray()
                for (int i=0; i < askBook.length(); i++){
                    if (askBook != null){
                        JSONObject jsonObject = new JSONObject()

                        if (askBook[i] != null){
                            jsonObject.put("AskVolume", askBook[i].Volume)
                            jsonObject.put("AskPrice", askBook[i].Price)
                        }
                        jsonArray.put(jsonObject)
                    }
                }
                return jsonArray as JSON
            }
            else{
                return askBook
            }
        }
        catch(Exception ex){
            return []
        }
    }

    String extractBidsCummulativeVolumeJson(String orderBookJson) {
        try{
            def orderBookJsonArray = JSON.parse(orderBookJson)
            def bidBook = orderBookJsonArray["Bids"] as JSONArray

            if (bidBook.any()){
                double totalVolume = 0;
                double totalPrice = 0;
                JSONArray jsonArray = new JSONArray()
                for (int i=0; i < bidBook.length(); i++){
                    if (bidBook != null){
                        JSONObject jsonObject = new JSONObject()

                        if (bidBook[i] != null){
                            jsonObject.put("BidVolume", bidBook[i].Volume)
                            jsonObject.put("BidPrice", bidBook[i].Price)

                            // Add the current volume to the total volume
                            totalVolume += Double.valueOf(bidBook[i].Volume)
                            jsonObject.put("CmVol", totalVolume)

                            // Add the current price to the total price
                            totalPrice += Double.valueOf(bidBook[i].Price)
                            jsonObject.put("CmPrice", totalPrice)
                        }
                        jsonArray.put(jsonObject)
                    }
                }
                return jsonArray as JSON
            }
            else{
                return bidBook
            }
        }
        catch(Exception ex){
            return []
        }
    }

    String extractAsksCummulativeVolumeJson(String orderBookJson) {
        try {
            def orderBookJsonArray = JSON.parse(orderBookJson)
            def askBook = orderBookJsonArray["Asks"] as JSONArray

            if (askBook.any()) {
                double totalCost = 0;
                double totalVolume = 0;
                double totalPrice = 0;
                JSONArray jsonArray = new JSONArray()
                for (int i=0; i < askBook.length(); i++){
                    if (askBook != null){
                        JSONObject jsonObject = new JSONObject()

                        if (askBook[i] != null){
                            jsonObject.put("AskVolume", askBook[i].Volume)
                            jsonObject.put("AskPrice", askBook[i].Price)
                            // Add the current volume to the total volume
                            totalVolume += Double.valueOf(askBook[i].Volume)
                            jsonObject.put("CmVol", totalVolume)

                            // Add the current volume to the total volume
                            totalPrice += Double.valueOf(askBook[i].Price)
                            jsonObject.put("CmPrice", totalPrice)
                        }
                        jsonArray.put(jsonObject)
                    }
                }
                return jsonArray as JSON
            }
            else{
                return askBook
            }
        }
        catch(Exception ex){
            return []
        }
    }

    private String updateCost(String json) {
        def jsonArray = JSON.parse(json)

        jsonArray.each {
            it['Cost'] = it['Volume'] * it['Price']
        }

        return jsonArray as JSON
    }
}

