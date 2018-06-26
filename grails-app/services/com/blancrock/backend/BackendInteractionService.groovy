/***************************************************************************** 
* Copyright 2016 Aurora Solutions 
* 
*    http://www.aurorasolutions.io 
* 
* Aurora Solutions is an innovative services and product company at 
* the forefront of the software industry, with processes and practices 
* involving Domain Driven Design(DDD), Agile methodologies to build 
* scalable, secure, reliable and high performance products.
* 
* Coin Exchange is a high performance exchange system specialized for
* Crypto currency trading. It has different general purpose uses such as
* independent deposit and withdrawal channels for Bitcoin and Litecoin,
* but can also act as a standalone exchange that can be used with
* different asset classes.
* Coin Exchange uses state of the art technologies such as ASP.NET REST API,
* AngularJS and NUnit. It also uses design patterns for complex event
* processing and handling of thousands of transactions per second, such as
* Domain Driven Designing, Disruptor Pattern and CQRS With Event Sourcing.
* 
* Licensed under the Apache License, Version 2.0 (the "License"); 
* you may not use this file except in compliance with the License. 
* You may obtain a copy of the License at 
* 
*    http://www.apache.org/licenses/LICENSE-2.0 
* 
* Unless required by applicable law or agreed to in writing, software 
* distributed under the License is distributed on an "AS IS" BASIS, 
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
* See the License for the specific language governing permissions and 
* limitations under the License. 
*****************************************************************************/


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
    Map makeAuthorizedPostRequest(String path, Object query, Integer iteration = 0) {
        def (String value, Integer status) = authorizedPostRequest(path, query)

        if (status == ResponseStatus.UNAUTHORIZED.value() && !iteration) {
            (value, status) = authorizedPostRequest(path, query)
        }

        return [value: value, status: status]
    }

    @Synchronized
    Map makeUnauthorizedGetRequest(String path, Object query) {
        def (String value, Integer status) = unauthorizedGetRequest(path, query)

        return [value: value, status: status]
    }

    @Synchronized
    Map makeAuthorizedGetRequest(String path, Object query, Integer iteration = 0) {
        def (String value, Integer status) = authorizedGetRequest(path, query)

        if (status == ResponseStatus.UNAUTHORIZED.value() && !iteration) {
            (value, status) = authorizedGetRequest(path, query)
        }

        return [value: value, status: status]
    }

    @Synchronized
    List makeUnauthorizedPostRequest(String path, Map query) {
        try {
            String baseUrl = grailsApplication.config.blancrock.backend.baseUrl
            Integer responseStatus = ResponseStatus.OK.value()
            String responseValue = ''

            HTTPBuilder http = new HTTPBuilder(baseUrl)

            http.request(Method.POST, CONTENT_TYPE) {
                uri.path = path
                body = query

                response.success = { resp, json ->
                    responseValue = [sessionLogoutTime: json['SessionLogoutTime'], lastLogin: json['LastLogin']] as JSON
                    responseStatus = resp.status

                    def session = RCH.currentRequestAttributes().session

                    session['requestGenerator'] = new RequestGenerator(apiKey: json['ApiKey'],
                            secretKey: json['SecretKey'])

                    if (log.isInfoEnabled()) {
                        log.info 'response data : '
                        log.info responseValue
                        log.info '----------------'
                    }
                }

                response.failure = { resp, json ->
                    responseStatus = resp.status

                    //@todo: only for status 401?
                    responseValue = json ? json['Message'] : 'Something was wrong'

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

    }

    private List authorizedPostRequest(String path, Object query) {
        try {
            String baseUrl = grailsApplication.config.blancrock.backend.baseUrl

            def session = RCH.currentRequestAttributes().session

            RequestGenerator requestGenerator = session['requestGenerator'] as RequestGenerator

            if (!requestGenerator) {
                return [null, ResponseStatus.BAD_REQUEST.value()]
            }

            requestGenerator.url = baseUrl + path

            query = prepareQueryForRequest(query)

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
                    } else if (resp.status == ResponseStatus.BAD_REQUEST.value()) {
                        responseValue = json['Message']
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

    private List unauthorizedGetRequest(String path, Object query) {
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

    private List authorizedGetRequest(String path, Object query) {
        try {
            String baseUrl = grailsApplication.config.blancrock.backend.baseUrl

            Integer responseStatus = ResponseStatus.OK.value()
            String responseValue = ''
            HTTPBuilder http = new HTTPBuilder(baseUrl)
            http.request(Method.GET, CONTENT_TYPE) {
                uri.path = path
                uri.query = query
                headers.Accept = CONTENT_TYPE

                def session = RCH.currentRequestAttributes().session

                RequestGenerator requestGenerator = session['requestGenerator'] as RequestGenerator

                if (!requestGenerator) {
                    return [null, ResponseStatus.BAD_REQUEST.value()]
                }

                requestGenerator.url = baseUrl + path

                headers.Auth = requestGenerator.authParams

                response.success = { resp, reader ->
                    responseValue = reader as JSON
                    responseStatus = resp.status
                }

                response.failure = { resp, reader ->
                    responseStatus = resp.status
                    responseValue = reader

                    if (resp.status == ResponseStatus.UNAUTHORIZED.value()) {
                        Holders.config.blancrock.auth.nounce = resp.headers.nounce
                    }

                    log.error 'request fail ' + responseStatus + ' ' + reader
                }
            }

            [responseValue, responseStatus]

        } catch (HttpResponseException ex) {
            log.error "Unexpected response error: ${ex.statusCode}"
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

    private Object prepareQueryForRequest(query) {
        def resultedQuery
        if (query && query instanceof String) {
            resultedQuery = '"' + query + '"'
        } else {
            resultedQuery = query
        }

        resultedQuery
    }
}
