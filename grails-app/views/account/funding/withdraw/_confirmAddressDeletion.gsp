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


<div class="frame frame-active" style="width: 788px; visibility: visible;">
    <form class="form-horizontal form-control-left no-left-margin" method="post">
        <div class="alert alert-block alert-error hidden2" style="display: none;"></div>
        <div class="address-delete-detail">
            <div>
                <div class="control-group">
                    <label class="control-label">Bitcoin address</label>
                    <div class="controls"><span class="readonly" ng-bind="currentWithdrawAddress.BitcoinAddress"></span></div></div>
                <div class="control-group"><label class="control-label">Description</label><div class="controls" >
                    <span class="readonly" ng-bind="currentWithdrawAddress.Description"></span></div>
                    <input name="description" type="hidden" >
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="control-group vpad20top">
                <div class="controls">
                    <div class="btn-toolbar">
                        <button type="button" class="btn btn-danger btn-large back hmarg20right" ng-click="navigateToManageWithdraw()">« Cancel</button>
                        <button type="submit" class="btn btn-success btn-large delete-address" autocomplete="off" ng-click="deleteAddress()">
                            <i class="icon icon-white icon-ok"></i> Delete address
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>