package com.blancrock.backend

import org.springframework.web.context.request.RequestContextHolder as RCH

/**
 * Created by Vladimir Havenchyk.
 */
class AuthorizationService {
    static transactional = false

    def grailsApplication
    def backendInteractionService

    Map makeLoginAttempt(String username, String password) {
        String path = grailsApplication.config.blancrock.backend.loginPath
        Map query = [username: username, password: password]

        def (String value, Integer status) = backendInteractionService.makeUnauthorizedPostRequest(path, query)

        return [status: status, value: value]
    }

    Map makeLogoutAttempt() {
        String path = grailsApplication.config.blancrock.backend.logoutPath
        Map query = [:]

        def (String value, Integer status) = backendInteractionService.makeAuthorizedGetRequest(path, query)

        if (status == ResponseStatus.OK.value()) {
            def session = RCH.currentRequestAttributes().session

            session['requestGenerator'] = null

            if (log.isInfoEnabled()) {
                log.info 'session was invalidated'
            }
        }

        return [status: status, value: value]
    }
}
