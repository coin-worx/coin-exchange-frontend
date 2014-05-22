package com.blancrock.backend

/**
 * Created by Vladimir Havenchyk.
 */
class InteractionController {
    def queryService

    def queryOpenOrders() {
        def result = queryService.queryOpenOrders(true, '')

        render result
    }
}
