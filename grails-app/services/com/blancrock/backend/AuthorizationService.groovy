package com.blancrock.backend

/**
 * Created by Vladimir Havenchyk.
 */
class AuthorizationService {
    static transactional = false

    def grailsApplication
    def backendInteractionService

    def makeLoginAttempt(String username, String password) {
        String path = grailsApplication.config.blancrock.backend.loginPath
        Map query = [username: username, password: password]

        def (Integer responseStatus, String responseValue) = backendInteractionService.unauthorizedRequest(path, query)

        return [responseStatus, responseValue]
    }

    String makeLogoutAttempt() {
        String path = grailsApplication.config.blancrock.backend.logoutPath
        Map query = [:]

        String response = backendInteractionService.makeGetRequestToBackend(path, query)

        return response
    }
}
