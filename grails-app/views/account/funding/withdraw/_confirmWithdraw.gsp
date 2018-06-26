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


<div class="frame review-wrap frame-active" style="width: 788px; visibility: visible; display: block;">
    <h5 class="title center">Confirm withdrawal</h5>
    <form class="form-horizontal form-control-left no-left-margin" method="post" novalidate="novalidate">

        <div class="review-detail well vmarg20"><div>
            <table class="stats-dots">
                <tbody>
                <tr>
                    <td class="k">Address</td>
                    <td class="dots">&nbsp;</td>
                    <td ng-bind="bitcoinAddress.BitcoinAddress"></td>
                </tr>
                </tbody>
            </table>
            <table class="stats-dots">
                <tbody>
                <tr>
                    <td class="k">Amount</td>
                    <td class="dots">&nbsp;</td>
                    <td ng-bind="amount"></td>
                </tr>
                </tbody>
            </table>
            <table class="stats-dots">
                <tbody>
                <tr>
                    <td class="k">Fee</td>
                    <td class="dots">&nbsp;</td>
                    <td ng-bind="withdrawLimits.Fee">
                    </td>
                </tr>
                </tbody>
            </table>
            <table class="stats-dots">
                <tbody>
                <tr>
                    <td class="k">Withdrawal Net Total</td>
                    <td class="dots">&nbsp;</td>
                    <td ng-bind="withdrawNetTotal"></td></tr>
                </tbody>
            </table>
        </div>
        </div>
        <div class="center vpad10" ng-show="getErrors()">
            <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
        </div>
        <div class="btn-toolbar vpad20top center">
            <button type="button" class="btn btn-danger btn-large back hmarg20right" autocomplete="off" ng-click="navigateToWithdrawForm()">« Cancel</button>
            <button type="submit" class="btn btn-success btn-large cancel" autocomplete="off" ng-click="commitWithdraw()">
                <i class="icon icon-white icon-ok"></i> Confirm withdrawal
            </button>
        </div>
    </form>
</div>