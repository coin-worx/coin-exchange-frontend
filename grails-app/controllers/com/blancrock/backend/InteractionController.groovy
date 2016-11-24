/***************************************************************************** 
* Copyright 2016 Aurora Solutions 
* 
*    http://www.aurorasolutions.io 
* 
* Aurora Solutions is an innovative services and product company at 
* the forefront of the software industry, with processes and practices 
* involving Domain Driven Design(DDD), Agile methodologies to build 
* scalable, secure, reliable and high performance products.
* 
* Coin Exchange is a high performance exchange system specialized for
* Crypto currency trading. It has different general purpose uses such as
* independent deposit and withdrawal channels for Bitcoin and Litecoin,
* but can also act as a standalone exchange that can be used with
* different asset classes.
* Coin Exchange uses state of the art technologies such as ASP.NET REST API,
* AngularJS and NUnit. It also uses design patterns for complex event
* processing and handling of thousands of transactions per second, such as
* Domain Driven Designing, Disruptor Pattern and CQRS With Event Sourcing.
* 
* Licensed under the Apache License, Version 2.0 (the "License"); 
* you may not use this file except in compliance with the License. 
* You may obtain a copy of the License at 
* 
*    http://www.apache.org/licenses/LICENSE-2.0 
* 
* Unless required by applicable law or agreed to in writing, software 
* distributed under the License is distributed on an "AS IS" BASIS, 
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
* See the License for the specific language governing permissions and 
* limitations under the License. 
*****************************************************************************/


package com.blancrock.backend

/**
 * Created by Vladimir Havenchyk.
 */
class InteractionController {
    def queryService

    def getTickerInfo() {
        Map queryResult = queryService.getTickerInfo('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getCurrencyPairs() {
        Map queryResult = queryService.getCurrencyPairs()

        response.status = queryResult.status
        render queryResult.value
    }

    def getRates() {
        Map queryResult = queryService.getRates()

        response.status = queryResult.status
        render queryResult.value
    }

    def queryOpenOrders() {
        Map queryResult = queryService.queryOpenOrders(true, '')

        response.status = queryResult.status
        render queryResult.value
    }

    def queryClosedOrders() {
        Map queryResult = queryService.queryClosedOrders(true, '', '', '', '', '')

        response.status = queryResult.status
        render queryResult.value
    }

    def getTradeHistory() {
        Map queryResult = queryService.getTradeHistory('', '')

        response.status = queryResult.status
        render queryResult.value
    }

    // Gets the details when a trade is clicked
    def getTradeDetails(){
        def orderParams = request.JSON
        String tradeId = orderParams['tradeId']

        Map queryResult = queryService.getTradeDetails(tradeId)

        response.status = queryResult.status
        render queryResult.value
    }

    def createNewOrder() {
        def orderParams = request.JSON
        def order = orderParams['order']

        String currencyPair = order['pair']
        String type = order['orderType']
        String side = order['type']
        BigDecimal volume = new BigDecimal(order['volume'] as String)
        BigDecimal price = 0
        if (type == 'Limit'){
            price = new BigDecimal(order['price'] as String)
        }

        Map queryResult = queryService.createOrder(currencyPair, type, side, volume, price)

        response.status = queryResult.status
        render queryResult.value
    }

    def newOrderSimpleBids() {
        Map queryResult = queryService.newOrderSimpleBids('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def newOrderSimpleAsks() {
        Map queryResult = queryService.newOrderSimpleAsks('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def cancelOrder() {
        def orderParams = request.JSON
        String orderId = orderParams['OrderId']
        
        Map queryResult = queryService.cancelOrder(orderId)

        response.status = queryResult.status
        render queryResult.value
    }

    def showOrderDetails() {
        def orderParams = request.JSON
        //@todo: need to use only style for all calls
        String orderId = orderParams['orderId']
        
        Map queryResult = queryService.showOrderDetails(orderId)

        response.status = queryResult.status
        render queryResult.value
    }

    // Gets teh trades when an order is clicked for order details
    def showTradeDetails() {
        def orderParams = request.JSON
        String orderId = orderParams['orderId']
        
        Map queryResult = queryService.showTradeDetails(orderId)

        response.status = queryResult.status
        render queryResult.value
    }

    def getRecentTrades() {
        Map queryResult = queryService.getRecentTrades('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getBids() {
        Map queryResult = queryService.getBids('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getAsks() {
        Map queryResult = queryService.getAsks('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getDepth() {
        Map queryResult = queryService.getDepth('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getOrderBookCummulativeVolume() {
        Map queryResult = queryService.getOrderBookCummulativeVolume('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }

    def getSpread() {
        Map queryResult = queryService.getSpread('XBTUSD')

        response.status = queryResult.status
        render queryResult.value
    }
}
