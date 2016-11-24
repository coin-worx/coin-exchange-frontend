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


<div class="frame withdraw-wrap" style="width: 788px;">
    <div class="center vpad10" ng-show="getErrors()">
        <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
    </div>
    <form class="form-horizontal medium form-control-left" autocomplete="off" method="post" data-asset="XXBT" novalidate="novalidate"
          name="withdrawForm1" ng-submit="reviewParamsBeforeCommit(withdrawForm1)">
        <div class="control-group">
            <label class="control-label">Address</label>
            <div class="controls">
                <div class="ib hmarg20right top">
                    <select name="address" class="input-xmlarge select-address" autocomplete="off" ng-model="bitcoinAddress" ng-options="address.BitcoinAddress for address in withdrawAddresses">
                        <option value="">Select Address</option>
                    </select>
                </div>
                <div class="ib top">
                <div class="btn-toolbar vmarg0">
                    <a class="btn btn-medium btn-primary show-address-add hmarg10right " ng-click="fromWithdrawFormToAddAddress()"><i class="icon icon-plus icon-white"></i> Add address</a>
                    <a class="btn btn-medium show-address-list" ng-click="navigateToManageWithdraw()"><i class="icon icon-list"></i> Manage</a>
                </div>
            </div>
                <p class="control-hint">
                    Choose a Bitcoin address to withdraw to. </p>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Amount</label>
            <div class="controls span4 hmarg0">
                <input type="text" autocomplete="off" class="ralign amount" style="width: 95%" ng-model="amount" name="amount" value="">
                <div class="vmarg10top funding-info spaced">
                    <table class="stats-dots">
                        <tbody><tr>
                            <td class="k">Minimum</td>
                            <td class="dots"></td>
                            <td>
                                <a class="amount-pop tt" ng-bind="withdrawLimits.MinimumAmount"></a>
                            </td>
                        </tr>
                        </tbody></table>
                    <table class="stats-dots">
                        <tbody><tr>
                            <td class="k">Maximum</td>
                            <td class="dots"></td>
                            <td>
                                <a class="amount-pop tt" ng-bind="withdrawLimits.MaximumWithdraw"></a>
                            </td>
                        </tr>
                        </tbody></table>
                    <table class="stats-dots">
                        <tbody><tr>
                            <td class="k">Balance</td>
                            <td class="dots"></td>
                            <td>
                                <a class="amount-pop" ng-bind="withdrawLimits.CurrentBalance"></a> </td>
                        </tr>
                        </tbody></table>
                </div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Fee</label>
            <div class="controls">
                <span class="readonly fee" ng-bind="withdrawLimits.Fee">
                </span>
            </div>
        </div>
        <div class="control-group vpad20top ">
            <div class="controls">
                <button class="btn btn-success btn-large btn-review cancel" type="submit" autocomplete="off">Review Withdrawal »</button>
                <input type="hidden" name="asset" value="XXBT">
                <input type="hidden" name="method" value="Bitcoin">
            </div>
        </div>
    </form>
</div>