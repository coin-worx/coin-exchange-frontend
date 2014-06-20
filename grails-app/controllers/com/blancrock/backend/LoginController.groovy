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

        Map requestResult = authorizationService.makeLoginAttempt(username, password)

        response.status = requestResult.status
        render requestResult.status
    }

    def logout() {
        Map requestResult = authorizationService.makeLogoutAttempt()

        response.status = requestResult.status
        render requestResult.status
    }
}
