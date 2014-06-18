package com.blancrock.backend

import grails.converters.JSON
import grails.util.Holders
import groovy.transform.Synchronized
import groovyx.net.http.ContentType
import groovyx.net.http.HTTPBuilder
import groovyx.net.http.HttpResponseException
import groovyx.net.http.Method
import org.springframework.web.context.request.RequestContextHolder as RCH

/**
 * Created by Vladimir Havenchyk.
 */
class BackendInteractionService {
    static transactional = false

    def grailsApplication

    final static String CONTENT_TYPE = 'application/json; charset=utf-8'

    @Synchronized
    String makePostRequestToBackend(String path, Map query, Integer iteration = 0) {
        def (String value, Integer status) = postRequest(path, query)

        if (status == ResponseStatus.UNAUTHORIZED.value() && !iteration) {
            (value) = postRequest(path, query)
        }

        return value
    }

    String makeGetRequestToBackend(String path, Map query) {
        def (String value, Integer status) = getRequest(path, query)

        return value
    }

    String makeAuthorizedGetRequest(String path, query) {
        def (String value, Integer status) = authorizedGetRequest(path, query)

        return value
    }

    def unauthorizedRequest(String path, Map query) {
        try {
            String baseUrl = grailsApplication.config.blancrock.backend.baseUrl
            Integer responseStatus = ResponseStatus.OK.value()
            String responseValue = ''

            HTTPBuilder http = new HTTPBuilder(baseUrl)

            http.request(Method.POST, CONTENT_TYPE) {
                uri.path = path
                body = query

                response.success = { resp, json ->
                    responseValue = json as JSON
                    responseStatus = resp.status

                    def session = RCH.currentRequestAttributes().session

                    session['requestGenerator'] = new RequestGenerator(apiKey: json['ApiKey'],
                            secretKey: json['SecretKey'])

                    log.error "request generator: " + session['requestGenerator']

                    if (log.isInfoEnabled()) {
                        log.info 'response data : '
                        log.info responseValue
                        log.info '----------------'
                    }
                }

                response.failure = { resp, json ->
                    responseStatus = resp.status

                    log.error 'request fail ' + responseStatus + ' ' + json
                }
            }

            [responseStatus, responseValue]

        } catch (HttpResponseException ex) {
            log.error "Unexpected response error: ${ex.statusCode}"
            log.error ex.cause.message
            return [ResponseStatus.BAD_REQUEST.value(), null]
        } catch (ConnectException ex) {
            log.error "Unexpected connection error: ${ex.message}"
            return [ResponseStatus.BAD_REQUEST.value(), null]
        }

    }

    private List postRequest(String path, Map query) {
        try {
            String baseUrl = grailsApplication.config.blancrock.backend.baseUrl

            def session = RCH.currentRequestAttributes().session

            RequestGenerator requestGenerator = session['requestGenerator'] as RequestGenerator

            if (!requestGenerator) {
                return [ResponseStatus.BAD_REQUEST.value(), null]
            }

            requestGenerator.url = baseUrl + path

            Integer responseStatus = ResponseStatus.OK.value()
            String responseValue = ''
            HTTPBuilder http = new HTTPBuilder(baseUrl)
            http.request(Method.POST, CONTENT_TYPE) {
                uri.path = path
                body = query
                headers.Accept = CONTENT_TYPE
                headers.Auth = requestGenerator.authParams

                response.success = { resp, json ->
                    requestGenerator.cNumber++
                    responseValue = json as JSON
                    responseStatus = resp.status

                    if (log.isInfoEnabled()) {
                        log.info 'response data : '
                        log.info responseValue
                        log.info '----------------'
                    }
                }

                response.failure = { resp, json ->
                    if (resp.status == ResponseStatus.UNAUTHORIZED.value()) {
                        Holders.config.blancrock.auth.nounce = resp.headers.nounce
                    }

                    requestGenerator.cNumber++
                    responseStatus = resp.status

                    log.error 'request fail ' + responseStatus + ' ' + json
                }
            }

            session['requestGenerator'] = requestGenerator

            [responseValue, responseStatus]

        } catch (HttpResponseException ex) {
            log.error "Unexpected response error: ${ex.statusCode}"
            log.error ex.cause.message
            return [null, ResponseStatus.BAD_REQUEST.value()]
        } catch (ConnectException ex) {
            log.error "Unexpected connection error: ${ex.message}"
            return [null, ResponseStatus.BAD_REQUEST.value()]
        }
    }

    private List<String> getRequest(String path, query) {
        try {
            String baseUrl = grailsApplication.config.blancrock.backend.baseUrl

            Integer responseStatus = ResponseStatus.OK.value()
            String responseValue = ''
            HTTPBuilder http = new HTTPBuilder(baseUrl)
            http.request(Method.GET, CONTENT_TYPE) {
                uri.path = path
                uri.query = query
                headers.Accept = CONTENT_TYPE

                response.success = { resp, json ->
                    responseValue = json as JSON
                    responseStatus = resp.status

                    if (log.isInfoEnabled()) {
                        log.info 'response data : '
                        log.info responseValue
                        log.info '----------------'
                    }
                }

                response.failure = { resp, json ->
                    responseStatus = resp.status

                    log.error 'request fail ' + responseStatus + ' ' + json
                }
            }

            [responseValue, responseStatus]

        } catch (HttpResponseException ex) {
            log.error "Unexpected response error: ${ex.statusCode}"
            log.error ex.cause.message
            return [null, ResponseStatus.BAD_REQUEST.value()]
        } catch (ConnectException ex) {
            log.error "Unexpected connection error: ${ex.message}"
            return [null, ResponseStatus.BAD_REQUEST.value()]
        }
        catch (Exception ex) {
            log.error "Unexpected exception: ${ex.message}"
            return [null, ResponseStatus.BAD_REQUEST.value()]
        }
    }

    private List authorizedGetRequest(String path, query) {
        try {
            String baseUrl = grailsApplication.config.blancrock.backend.baseUrl

            Integer responseStatus = ResponseStatus.OK.value()
            String responseValue = ''
            HTTPBuilder http = new HTTPBuilder(baseUrl)
            http.request(Method.GET, ContentType.TEXT) {
                uri.path = path
                uri.query = query

                def session = RCH.currentRequestAttributes().session

                RequestGenerator requestGenerator = session['requestGenerator'] as RequestGenerator

                if (!requestGenerator) {
                    return [null, ResponseStatus.BAD_REQUEST.value()]
                }

                requestGenerator.url = baseUrl + path

                headers.Auth = requestGenerator.authParams

                response.success = { resp, reader ->
                    responseValue = reader
                    responseStatus = resp.status
                }

                response.failure = { resp, reader ->
                    responseStatus = resp.status

                    log.error 'request fail ' + responseStatus + ' ' + reader
                }
            }

            [responseValue, responseStatus]

        } catch (HttpResponseException ex) {
            log.error "Unexpected response error: ${ex.statusCode}"
            log.error ex.cause.message
            return [null, ResponseStatus.BAD_REQUEST.value()]
        } catch (ConnectException ex) {
            log.error "Unexpected connection error: ${ex.message}"
            return [null, ResponseStatus.BAD_REQUEST.value()]
        }
        catch (Exception ex) {
            log.error "Unexpected exception: ${ex.message}"
            return [null, ResponseStatus.BAD_REQUEST.value()]
        }

    }
}
