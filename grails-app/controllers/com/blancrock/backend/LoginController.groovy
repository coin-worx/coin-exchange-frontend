package com.blancrock.backend

/**
 * Created by Vladimir Havenchyk.
 */
class LoginController {
    def authorizationService

    def login() {
        def jsonParams = request.JSON

        log.error("json params : ${jsonParams}")

        String username = jsonParams['username']
        String password = jsonParams['password']

        String response = authorizationService.makeLoginAttempt(username, password)

        render response
    }

    def testLogin() {
        String username = "user"
        String password = "123"

        String response = authorizationService.makeLoginAttempt(username, password)

        render response
    }
}
