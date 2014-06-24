package com.blancrock.backend

import groovy.time.TimeCategory

/**
 * Created by Vladimir Havenchyk.
 */
class AuthParams {
    String apiKey
    String secretKey
    Date sessionLogoutTime

    static constraints = {
        sessionLogoutTime nullable: true
    }
}
