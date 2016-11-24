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


<div class="tab-content-wrap">
    <div class="tab-content">
        <div id="verify-wrap" class="tab-pane active">
            <form id="form-verify" action="/u/verify?subtab=tier1#verify-forms" class="jq-validate-form form-horizontal large form-control-left vpad10top hpad20" method="post" autocomplete="off">
                <div class="control-group">
                    <label class="control-label">Status</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier1Status"><strong></strong></span>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Full Name</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier1Details.FullName"><strong></strong></span>
                        <p class="control-hint"><strong>IMPORTANT:</strong> once submitted, full name cannot be changed. Please ensure the spelling is correct.</p>
                    </div>
                </div>
                <div class="control-group vmarg20top">
                    <label class="control-label">Date of birth</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier1Details.DateOfBirth"><strong></strong></span>
                        <p class="control-hint"><strong>IMPORTANT:</strong> once submitted, your date of birth cannot be changed. Please ensure the correct date is selected.</p>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Country/Territory</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier1Details.Country"></span>
                    </div>
                </div>
                <div class="control-group vmarg10bot province-wrap hidden2">
                    <label class="control-label">State/Province/Subdivision</label>
                    <div class="controls">
                        <span class="readonly">
                        </span>
                        <p class="control-hint">&nbsp;</p>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Phone Number</label>
                    <div class="controls">
                        <div class="readonly">
                            <span class="hmarg40right" ng-bind="tier1Details.PhoneNumber"></span>
                        </div>
                        <p class="control-hint">Mobile</p>
                    </div>
                </div>
                <input name="subtab" value="tier1" type="hidden">
            </form>
        </div>
    </div>
</div>