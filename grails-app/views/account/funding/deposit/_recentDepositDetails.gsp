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


<p>Select an asset to deposit from the menu and follow the instructions on the displayed form. Please see the FAQ for questions or
contact support for any issues.
</p>
<div class="clearfix vmarg20bot">
    <h5 class="title vpad10top pull-left" ng-bind-template="Deposit {{deposit.DepositId}}"></h5>
    <div class="pull-right">
        <button class="btn btn-small back" ng-click="navigateToRecentDeposits()">« Back</button>
    </div>
</div>
<div class="stats-dots-wrap detail-column">
    <div>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Currency</td>
                <td class="dots">&nbsp;</td>
                <td ng-bind="deposit.Currency"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Date</td>
                <td class="dots">&nbsp;</td>
                <td ng-bind="deposit.Date"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Address</td>
                <td class="dots">&nbsp;</td>
                <td ng-bind="deposit.BitcoinAddress"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Transaction ID</td>
                <td class="dots">&nbsp;</td>
                <td ng-bind="deposit.TransactionId"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Status</td>
                <td class="dots">&nbsp;</td>
                <td class="mono">
                    <span ng-if="deposit.Status === 'Confirmed'" class="label label-success" ng-bind="deposit.Status"></span>
                    <span ng-if="deposit.Status === 'Cancelled'" class="label label-important" ng-bind="deposit.Status"></span>
                    <span ng-if="deposit.Status === 'Pending'" class="label label-info" ng-bind="deposit.Status"></span>
                </td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Amount</td>
                <td class="dots">&nbsp;</td>
                <td class="mono" ng-bind="deposit.Amount"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Fee</td>
                <td class="dots">&nbsp;</td>
                <td class="mono" ng-bind="deposit.Fee"></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>