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

    void resetLogoutTime() {
        //@todo: move to config.groovy
        Integer sessionTime = 10
        use(TimeCategory) {
            this.sessionLogoutTime = new Date() + sessionTime.minutes
        }
    }

    Boolean isSessionExpired() {
        Boolean isSessionExpired

        use(TimeCategory) {
            isSessionExpired = this.sessionLogoutTime - new Date() < 0.seconds
        }

        return isSessionExpired
    }
}
