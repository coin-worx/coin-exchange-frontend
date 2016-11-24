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


<div%{-- id="table-orderlist-open-wrap" class="vmarg40bot"--}% style="width: 155px" ng-controller="AsksController">
    <h4 class="title">Selling</h4>

    <table class="table table-hover table-striped dataTable">
        <thead>
        <tr role="row" ng-cloak>
            <th ng-click="updateSorting('AskPrice')" class="lalign nw"
                ng-class="getSortingClass('AskPrice')" style="width: 65px;">Price</th>
            <th ng-click="updateSorting('AskVolume')" class="lalign nw"
                ng-class="getSortingClass('AskVolume')" style="width: 90px;">Volume</th>
        </tr>
        </thead>

        <tbody>
        <tr ng-repeat="order in filteredOrderBook | orderBy:'AskPrice':sort.reverse"
            ng-class="{even: $even, odd: $odd}" ng-cloak>
            <td ng-if="order.AskPrice != '0'" class="nw ralign" ng-bind="order.AskPrice"></td>
            <td ng-if="order.AskVolume != '0'" class="ralign" ng-bind="order.AskVolume"></td>
        </tr>
        <tr class="odd" ng-hide="orderBook.length">
            <td valign="top" colspan="9" class="dataTables_empty">No asks currently available.</td>
        </tr>
        </tbody>
    </table>

    <div ng-cloak>
        <div class="pull-right">
            <pagination total-items="totalItems" ng-model="currentPage" num-pages="numPages"
                        previous-text="&lsaquo;" next-text="&rsaquo;"
                        max-size="maxSize" class="pagination-sm" ng-change="pageChanged()"
                        boundary-links="false" rotate="false"></pagination>
        </div>

        <div class="pull-left">
            <div class="dataTables_info" ng-cloak>
                {{currentMinIndex + 1}} - {{currentMaxIndex}} of {{totalItems}} asks
            </div>
        </div>

    </div>

    <div class="row">
        <div class="span3">
            <div class="dataTables_info"></div>
        </div>

        <div class="span5 offset1"></div>
    </div>
</div>