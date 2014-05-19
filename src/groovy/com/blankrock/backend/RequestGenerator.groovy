package com.blankrock.backend

import org.apache.commons.lang.RandomStringUtils

/**
 * Created by Vladimir Havenchyk.
 */
class RequestGenerator {
    String apiKey
    String secretKey
    String url
    String nounce
    String cNounce
    Integer cNumber = 1

    String hash
    String authParams

    String getHash() {
        "$apiKey:$url:$secretKey".encodeAsMD5()
    }

    String getAuthParams() {
        [apiKey, nounce, cNounce, cNumber, getHash()].join(',')
    }

    String getCNonce() {
        if (!cNounce) {
            cNounce = RandomStringUtils.randomNumeric(4)
        }

        cNounce
    }
}