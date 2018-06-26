<!--
***************************************************************************** 
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
*****************************************************************************
-->


<div class="tab-pane active">
    <div class="row">
        <div class="span12">
            <div class="vmarg20bot">
                <h4 class="title">Change Notifications</h4>
                <p>We recommend that you subscribe to administrative emails to stay informed of important changes that may affect you.</p>
            </div>
            <form class="jq-validate-form form-horizontal large form-control-left vpad10top"
                  method="post" name="notificationsForm" ng-submit="submitNotificationsForm(notificationForm)">
                <div class="control-group">
                    <label class="control-label">Administrative Emails</label>
                    <div class="controls">
                        <input name="flags[email-admin]" value="1" checked="checked" type="checkbox" ng-model="adminEmails">
                        <span class="control-hint">Non-critical updates that may affect your Kraken account (e.g., new features or services, policy updates, etc.)</span>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Newsletter Emails</label>
                    <div class="controls">
                        <input name="flags[email-newsletter]" value="1" checked="checked" type="checkbox" ng-model="newsLetterEmails">
                        <span class="control-hint">Helpful information that you may find interesting (e.g., blog posts, analysis and interesting facts about the Bitcoin industry, special offers, etc.)</span>
                    </div>
                </div>
                <div class="center vpad10" ng-show="getErrors()">
                    <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
                </div>
                <div class="center vpad10" ng-show="getResponse()">
                    <div class="alert alert-block alert-success" ng-bind="getResponse()"></div>
                </div>
                <div class="control-group vpad20top">
                    <div class="controls">
                        <button class="btn btn-success btn-large" type="submit" autocomplete="off">Update Notifications</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>