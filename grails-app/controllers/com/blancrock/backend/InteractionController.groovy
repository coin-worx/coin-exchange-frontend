package com.blancrock.backend

import grails.converters.JSON

/**
 * Created by Vladimir Havenchyk.
 */
class InteractionController {
    def queryService

    def queryOpenOrders() {
        def result = queryService.queryOpenOrders(true, '')

        render([result: result] as JSON)
    }
}
