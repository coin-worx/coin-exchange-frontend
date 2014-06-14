package com.blancrock.backend

/**
 * Created by Vladimir Havenchyk.
 */
class AuthorizationService {
    static transactional = false

    def grailsApplication
    def backendInteractionService

    String makeLoginAttempt(String username, String password) {
        String path = grailsApplication.config.blancrock.backend.loginPath
        Map query = [username: username, password: password]

        String response = backendInteractionService.makePostRequestToBackend(path, query)

        return response
    }
}
