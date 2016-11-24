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


<p class="vpad10">Fill out the form below to get Tier 2 verified. All fields marked <span class="reqmark">*</span> are required.</p>
<div class="frame withdraw-wrap" style="width: 788px;" ng-controller="getVerifiedController">
    <div class="center vpad10" ng-show="getErrors()">
        <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
    </div>
    <form class="form-horizontal medium form-control-left" autocomplete="off" method="post" data-asset="XXBT" novalidate="novalidate"
          name="tier3Form" ng-submit="submitTier3Form(tier3Form)">
        <div class="control-group">
            <label class="control-label">National ID Number</label>
            <div class="controls">
                <input autocomplete="off" tabindex="3" class="required input-xlarge" name="address1" value="" maxlength="128" type="text"
                       ng-model="tier3NationalId">
                <span class="reqmark"></span>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Document Type</label>
            <div class="controls">
                <input autocomplete="off" tabindex="4" class="required input-xlarge" name="address2" value="" maxlength="128" type="text"
                       ng-model="tier3DocumentType">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">File Name</label>
            <div class="controls">
                <input autocomplete="off" tabindex="5" class="required input-xlarge" name="address3" value="" maxlength="128" type="text"
                       ng-model="tier3FileName">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Social Security Number</label>
            <div class="controls">
                <input autocomplete="off" tabindex="5" class="required input-xlarge" name="address3" value="" maxlength="128" type="text"
                       ng-model="tier3Ssn">
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
                <button tabindex="11" class="btn btn-success btn-large" type="submit" autocomplete="off">
                    <i class="icon icon-ok"></i>
                    Get Verified</button>
            </div>
        </div>
    </form>
</div>
