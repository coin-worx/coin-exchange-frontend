package com.blancrock.backend

import grails.util.Holders
import org.apache.commons.lang.RandomStringUtils

/**
 * Created by Vladimir Havenchyk.
 */
class RequestGenerator {
    def grailsApplication

    String apiKey
    String secretKey
    String url
    String cNounce
    Integer cNumber = 1
    Date sessionLogoutTime

    String getHash() {
        "$apiKey:$url:$secretKey".encodeAsMD5()
    }

    String getAuthParams() {
        String nounce = Holders.config.blancrock.auth.nounce

        println "*******************************************************"
        println "nounce is : ${nounce}"
        println "*******************************************************"

        [apiKey, nounce, cNounce, cNumber, getHash()].join(',')
    }
}