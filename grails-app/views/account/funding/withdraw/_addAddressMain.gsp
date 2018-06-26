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


<h5 class="title">Add address</h5>
<p class="vmarg20bot"></p>
<form method="post" class="form-horizontal form-control-left" autocomplete="off" style="display: block;" name="addAddressForm"
ng-submit="addNewAddress(addAddressForm)">
    <div class="center vpad10" ng-show="getErrors()">
        <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
    </div>
    <div class="control-group">
        <label class="control-label">Description</label>
        <div class="controls">
            <input name="description" type="text" autocomplete="off" class="span4" maxlength="64" ng-model="withdrawAddressDescription">
            <span class="reqmark hpad10left">*</span>
            <p class="control-hint">Unique description used to identify this address.</p>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">Bitcoin address</label>
        <div class="controls">
            <input type="text" name="info[address]" autocomplete="off" class="span4" value="" ng-model="newWithdrawAddress">
            <span class="reqmark hpad10left">*</span>
            <p class="control-hint">Your Bitcoin withdrawal address.</p>
        </div>
    </div>
    <div class="control-group">
        <div class="control-group vpad20top">
            <div class="controls">
                <div class="btn-toolbar">
                    <button type="button" class="btn btn-danger btn-large back hmarg20right" ng-click="navigateFromAddAddress()">« Cancel</button>
                    <button type="submit" class="btn btn-success btn-large save-address" autocomplete="off">
                        <i class="icon icon-white icon-ok"></i> Save address
                    </button>
                </div>
            </div>
        </div>
        </div>
</form>

%{--
<div style="width: 788px; visibility: visible;">
    <div>
        <form method="post" class="form-horizontal form-control-left" autocomplete="off" data-action="address-add" novalidate="novalidate"
              style="display: block;" name="addWithdrawAddressForm" ng-submit="addNewAddress(addWithdrawAddressForm)">
            <div class="center vpad10" ng-show="getErrors()">
                <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
            </div>
            <div class="control-group">
                <label class="control-label">Description</label>
                <div class="controls">
                    <input name="description" type="text" autocomplete="off" class="span4" maxlength="64" ng-model="withdrawAddressDescription">
                    <span class="reqmark hpad10left">*</span>
                    <p class="control-hint">Unique description used to identify this address.</p>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Bitcoin address</label>
                <div class="controls">
                    <input type="text" name="info[address]" autocomplete="off" class="span4" value="" ng-model="newWithdrawAddress">
                    <span class="reqmark hpad10left">*</span>
                    <p class="control-hint">Your Bitcoin withdrawal address.</p>
                </div>
            </div>
            <div class="control-group">
                <div class="control-group vpad20top">
                    <div class="controls">
                        <div class="btn-toolbar">
                            <button type="button" class="btn btn-danger btn-large back hmarg20right">« Cancel</button>
                            <button type="submit" class="btn btn-success btn-large save-address" autocomplete="off">
                                <i class="icon icon-white icon-ok"></i> Save address
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>--}%
