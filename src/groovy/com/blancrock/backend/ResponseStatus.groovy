package com.blancrock.backend

/**
 * Created by Vladimir Havenchyk.
 */
public enum ResponseStatus {
    UNAUTHORIZED(401),
    BAD_REQUEST(400),
    OK(200)

    ResponseStatus(int value) {
        this.value = value
    }

    private final int value

    public int value() {
        return value
    }
}