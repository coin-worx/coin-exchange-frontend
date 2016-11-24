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


<div class="span6" ng-controller="RatesController">
    <div class="hpad20left">
        <div class="clearfix">
            <h4 class="pull-left title">Rates</h4>

            <p class="pull-right table-title-hint">Exchange rates used for trade balance calculations.</p>
        </div>

        <table class="table table-hover table-striped dataTable">
            <thead>
            <tr role="row" ng-cloak>
                <th ng-click="updateSorting('CurrencyPair')" class="lalign nw"
                    ng-class="getSortingClass('CurrencyPair')" style="width: 55px;">CurrencyPair</th>
                <th ng-click="updateSorting('Rate')" class="lalign nw"
                    ng-class="getSortingClass('Rate')" style="width: 165px;">Rate</th>
            </tr>
            </thead>

            <tbody>
            <tr ng-repeat="rate in rates | orderBy:sort.predicate:sort.reverse"
                ng-class="{even: $even, odd: $odd}" ng-cloak>
                <td class="nw ralign" ng-bind="rate.CurrencyPair"></td>
                <td class="ralign" ng-bind="rate.Rate"></td>
            </tr>
            <tr class="odd" ng-hide="rates.length">
                <td valign="top" colspan="9" class="dataTables_empty">No Rates currently available.</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>