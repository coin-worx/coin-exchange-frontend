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


<div id="ledger-detail" ng-controller="ledgerDetailsController">
    <div class="clearfix vmarg20bot">
        <h4 class="title pull-left" ng-bind-template="Ledger {{ledger.LedgerId}}"></h4>
        <div class="pull-right"> <button class="btn btn-small back"ng-click="goBack()">« Back</button>
        </div>
    </div>
    <div class="row stats-dots-wrap">
        <div class="span6">
            <div class="hpad20right">
                <table class="stats-dots">
                    <tbody>
                    <tr ng-if="ledger.WithdrawId !== null && ledger.WithdrawID !== ''">
                        <td class="k">Withdrawal</td>
                        <td class="dots"></td>
                        <td ng-bind="ledger.WithdrawId"> </td>
                    </tr>
                    <tr ng-if="ledger.DepositId !== null && ledger.DepositId !== ''">
                        <td class="k">Deposit</td>
                        <td class="dots"></td>
                        <td ng-bind="ledger.DepositId"> </td>
                    </tr>
                    <tr ng-if="ledger.TradeId !== null && ledger.TradeId !== ''">
                        <td class="k">Trade</td>
                        <td class="dots"></td>
                        <td ng-bind="ledger.TradeId"> </td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign">Reference transaction ID associated with this ledger.</td>
                    </tr>
                    </tbody>
                </table>
                <table class="stats-dots">
                    <tbody>
                    <tr>
                        <td class="k">Order</td>
                        <td class="dots"></td>
                        <td ng-bind="ledger.OrderId"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <table class="stats-dots">
                <tbody>
                <tr>
                    <td class="k">Type</td>
                    <td class="dots"></td>
                    <td ng-bind="ledger.LedgerType"></td>
                </tr>
                <tr>
                    <td colspan="3" class="control-hint ralign">&nbsp;</td>
                </tr>
                </tbody>
            </table>
                <table class="stats-dots">
                    <tbody>
                    <tr>
                        <td class="k">Date</td>
                        <td class="dots">
                        </td>
                        <td ng-bind="ledger.DateTime"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="span6">
            <div class="hpad20left">
                <table class="stats-dots">
                    <tbody>
                    <tr>
                        <td class="k">Currency</td>
                        <td class="dots"></td>
                        <td ng-bind="ledger.Currency"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <table class="stats-dots">
                    <tbody>
                    <tr>
                        <td class="k">Amount</td>
                        <td class="dots"></td>
                        <td class="mono" ng-bind="ledger.Amount"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <table class="stats-dots">
                    <tbody>
                    <tr>
                        <td class="k">Fee</td>
                        <td class="dots"></td>
                        <td class="mono" ng-bind="ledger.Fee"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <table class="stats-dots">
                    <tbody>
                    <tr>
                        <td class="k">Balance</td>
                        <td class="dots"></td>
                        <td class="mono" ng-bind="ledger.Balance"></td>
                    </tr> <tr> <td colspan="3" class="control-hint ralign">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
