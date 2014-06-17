package com.blancrock.backend

import grails.converters.JSON
import grails.util.Holders
import groovy.transform.Synchronized
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
        String value
        String status

        (value, status) = postRequest(path, query)

        if (status == ResponseStatus.UNAUTHORIZED.value() && !iteration) {
            (value) = postRequest(path, query)
        }

        return value
    }

    @Synchronized
    String makeGetRequestToBackend(String path, Map query, Integer iteration = 0) {
        String value
        String status

        (value, status) = getRequest(path, query)

        if (status == ResponseStatus.UNAUTHORIZED.value() && !iteration) {
            (value) = getRequest(path, query)
        }

        return value
    }

    @Synchronized
    String makeStringParamPostRequestToBackend(String path, String query, Integer iteration = 0) {
        String value
        String status

        (value, status) = postRequestStringParam(path, query)

        if (status == ResponseStatus.UNAUTHORIZED.value() && !iteration) {
            (value) = postRequestStringParam(path, query)
        }

        return value
    }

    private List<String> postRequest(String path, Map query) {
        try {
            String baseUrl = grailsApplication.config.blancrock.backend.baseUrl

            def session = RCH.currentRequestAttributes().session

            AuthParams authParams = AuthParams.findByApiKey('55555')

            RequestGenerator requestGenerator = session['requestGenerator'] as RequestGenerator ?: new RequestGenerator(
                    apiKey: authParams.apiKey, secretKey: authParams.secretKey
            )

            requestGenerator.url = baseUrl + path

            String responseStatus = ''
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
                    Holders.config.blancrock.auth.nounce = resp.headers['nounce']
                    requestGenerator.cNumber++
                    responseStatus = resp['status']
                    //@todo: use values from bootstrap for now
                    //requestGenerator.apiKey = resp.headers['apiKey']

                    log.error 'request fail ' + responseStatus + ' ' + json
                }
            }

            session['requestGenerator'] = requestGenerator

            [responseValue, responseStatus]

        } catch (HttpResponseException ex) {
            log.error "Unexpected response error: ${ex.statusCode}"
            log.error ex.cause.message
            return null
        } catch (ConnectException ex) {
            log.error "Unexpected connection error: ${ex.message}"
            return null
        }
    }

    private List<String> getRequest(String path, Map query) {
        try {
            String baseUrl = grailsApplication.config.blancrock.backend.baseUrl

            String responseStatus = ''
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
                    //@todo: use values from bootstrap for now
                    //requestGenerator.apiKey = resp.headers['apiKey']

                    log.error 'request fail ' + responseStatus + ' ' + json
                }
            }

            [responseValue, responseStatus]

        } catch (HttpResponseException ex) {
            log.error "Unexpected response error: ${ex.statusCode}"
            log.error ex.cause.message
            return null
        } catch (ConnectException ex) {
            log.error "Unexpected connection error: ${ex.message}"
            return null
        }
        catch (Exception ex) {
            log.error "Unexpected exception: ${ex.message}"
            return null
        }
    }

    private List<String> postRequestStringParam(String path, String query) {
        try {
            String baseUrl = grailsApplication.config.blancrock.backend.baseUrl

            def session = RCH.currentRequestAttributes().session

            AuthParams authParams = AuthParams.findByApiKey('55555')

            RequestGenerator requestGenerator = session['requestGenerator'] as RequestGenerator ?: new RequestGenerator(
                    apiKey: authParams.apiKey, secretKey: authParams.secretKey
            )

            requestGenerator.url = baseUrl + path

            String responseStatus = ''
            String responseValue = ''
            HTTPBuilder http = new HTTPBuilder(baseUrl)
            http.request(Method.POST, CONTENT_TYPE) {
                uri.path = path
                body = "\"" + query + "\""
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
                    if (resp.status == ResponseStatus.UNAUTHORIZED) {
                        Holders.config.blancrock.auth.nounce = resp.headers['nounce']
                    }
                    requestGenerator.cNumber++
                    responseStatus = resp.status
                    //@todo: use values from bootstrap for now
                    //requestGenerator.apiKey = resp.headers['apiKey']

                    log.error 'request fail ' + responseStatus + ' ' + json
                }
            }

            session['requestGenerator'] = requestGenerator

            [responseValue, responseStatus]

        } catch (HttpResponseException ex) {
            log.error "Unexpected response error: ${ex.statusCode}"
            log.error ex.cause.message
            return null
        } catch (ConnectException ex) {
            log.error "Unexpected connection error: ${ex.message}"
            return null
        }
    }
}
