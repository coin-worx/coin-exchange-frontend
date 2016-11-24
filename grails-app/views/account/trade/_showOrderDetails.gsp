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


<div class="slider" id="orderdetail-wrap" ng-controller="ShowOrderDetailsController">
<div class="transfer">

<div class="row" ng-hide="detailsLoaded">
    <p style="text-align: center">
        <i class="icon-spinner icon-spin icon-large icon-5x"></i> <br>
        Loading...
    </p>
</div>

<div class="orderdetail-data-wrap" class="vmarg40bot"  ng-show="detailsLoaded">
<div class="clearfix vmarg10bot">
    <h4 class="title pull-left" ng-bind-template="Order {{orderDetails.OrderId}}" name="title"></h4>
    <div class="pull-right">
        <button class="btn btn-small back"  ng-click='goToUrl("/account/trade/orders")'>
          « Back
          </button>
    </div>
</div>
<div>
<div class="row stats-dots-wrap vmarg20">
    <div class="span6">
        <div class="hpad20right">
            <table class="stats-dots">
                <tbody><tr>
                    <td class="k">Order</td>
                    <td class="dots"></td>
                    <td name="order" ng-bind-template="{{orderDetails.Side}} {{orderDetails.Volume}} {{orderDetails.Currency}} @ {{orderDetails.Type}} {{orderDetails.Price}}"><span class="deczeros">000000</span> <span class="deczeros">00</span></td>
                </tr>
                <tr>
                    <td colspan="3" class="control-hint ralign"> </td>

                </tr></tbody></table>
            <table class="stats-dots">
                <tbody><tr>
                    <td class="k">Conditional Close</td>
                    <td class="dots"></td>
                    <td name="cc-order">——</td>
                </tr>
                <tr>
                    <td colspan="3" class="control-hint ralign"> </td>

                </tr></tbody></table>
        </div>
    </div>
    <div class="span6">
        <div class="hpad20left">
            <table class="stats-dots">
                <tbody><tr>
                    <td class="k">Status</td>
                    <td class="dots"></td>
                    <td name="status"><span class="label mono label-inverse" ng-bind-template="{{orderDetails.Status}}"></span></td>
                </tr>
                <tr>
                    <td colspan="3" class="control-hint ralign"> </td>

                </tr></tbody></table>
            <table class="stats-dots">
                <tbody><tr>
                    <td class="k">Reason</td>
                    <td class="dots"></td>
                    <td name="reason">——</td>
                </tr>
                <tr>
                    <td colspan="3" class="control-hint ralign"> </td>

                </tr></tbody></table>
        </div>
    </div>
</div>
<div class="vmarg20bot">
    <h5 class="title underline">Terms</h5>
    <div class="row stats-dots-wrap">
        <div class="span6">
            <div class="hpad20right">
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">Order Type</td>
                        <td class="dots"></td>
                        <td name="fordertype" ng-bind-template="{{orderDetails.Side}}/{{orderDetails.Type}}"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">Currency Pair</td>
                        <td class="dots"></td>
                        <td name="fasset" ng-bind="orderDetails.CurrencyPair"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">Volume</td>
                        <td class="dots"></td>
                        <td name="volume" class="mono" ng-bind="orderDetails.Volume"><span class="deczeros">000000</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">Limit Price</td>
                        <td class="dots"></td>
                        <td name="price" class="mono" ng-bind="orderDetails.Price"><span class="deczeros">00</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
                <table class="stats-dots hidden2" style="display: none;">
                    <tbody><tr>
                        <td class="k">Secondary Price</td>
                        <td class="dots"></td>
                        <td name="price2" class="mono"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
            </div>
        </div>
        <div class="span6">
            <div class="hpad20left">
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">Leverage</td>
                        <td class="dots"></td>
                        <td name="leverage">none</td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">Scheduled Start</td>
                        <td class="dots"></td>
                        <td name="starttm">——</td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">Scheduled Expire</td>
                        <td class="dots"></td>
                        <td name="expiretm">——</td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">P/L/Fee Currency</td>
                        <td class="dots"></td>
                        <td name="plinbase"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
            </div>
        </div>
    </div>
</div>
<div class="cond-close-wrap vmarg20bot" style="display: none;">
    <h5 class="title underline">Conditional Close</h5>
    <div class="row stats-dots-wrap">
        <div class="span6">
            <div class="hpad20right">
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">Order Type</td>
                        <td class="dots"></td>
                        <td name="cc-fordertype">——</td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
            </div>
            <div class="hpad20right">
                <table class="stats-dots" style="display: none;">
                    <tbody><tr>
                        <td class="k">Price</td>
                        <td class="dots"></td>
                        <td name="cc-price"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
            </div>
            <div class="hpad20right">
                <table class="stats-dots" style="display: none;">
                    <tbody><tr>
                        <td class="k">Secondary Price</td>
                        <td class="dots"></td>
                        <td name="cc-price2"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
            </div>
        </div>
    </div>
</div>
<div class="vmarg20bot">
    <h5 class="title underline">Execution</h5>
    <div class="row stats-dots-wrap vmarg20bot">
        <div class="span6">
            <div class="hpad20right">
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">Volume Executed</td>
                        <td class="dots"></td>
                        <td name="volexecuted" class="mono" ng-bind="orderDetails.VolumeExecuted"><span class="deczeros">0000000</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">Avg. Price</td>
                        <td class="dots"></td>
                        <td name="avgprice" class="mono" ng-bind="orderDetails.AveragePrice">%{--<span class="deczeros">00</span>--}%</td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">Fee</td>
                        <td class="dots"></td>
                        <td name="fee" class="mono">0.0<span class="deczeros">00</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">Cost</td>
                        <td class="dots"></td>
                        <td name="cost" class="mono" ng-bind-template="{{orderDetails.AveragePrice * orderDetails.VolumeExecuted}}"><span class="deczeros">00</span></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
            </div>
        </div>
        <div class="span6">
            <div class="hpad20left">
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">Opened</td>
                        <td class="dots"></td>
                        <td name="opentime" ng-bind="orderDetails.DateTime"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
                <table class="stats-dots">
                    <tbody><tr>
                        <td class="k">Closed</td>
                        <td class="dots"></td>
                        <td name="closetime" ng-bind="orderDetails.ClosingDateTime"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign"> </td>

                    </tr></tbody></table>
            </div>
        </div>
    </div>
</div>
<div class="vmarg20top">
    <h5 class="title">Trades</h5>
    <div id="DataTables_Table_12_wrapper" class="dataTables_wrapper form-inline" role="grid"><div class="dataTables_table_wrapper"><table class="table table-hover table-striped table-trades table-trades-basic dataTable" id="DataTables_Table_12" aria-describedby="DataTables_Table_12_info">
        <thead>
        <tr role="row" ng-cloak>
            <th ng-click="updateSorting('TradeId')" class="lalign nw"
                ng-class="getSortingClass('TradeId')" style="width: 55px;">Trade Id</th>
            <th ng-click="updateSorting('ExecutionDateTime')" class="lalign nw"
                ng-class="getSortingClass('ExecutionDateTime')" style="width: 165px;">Execution Time</th>
            <th ng-click="updateSorting('Price')" class="lalign"
                ng-class="getSortingClass('Price')" style="width: 50px;">Price</th>
            <th ng-click="updateSorting('Volume')" class="ralign nw"
                ng-class="getSortingClass('Volume')" style="width: 80px;">Volume</th>
            <th ng-click="updateSorting('CurrencyPair')" class="ralign"
                ng-class="getSortingClass('Currencypair')" style="width: 115px;">CurrencyPair</th>
        </tr>
        </thead>

        <tbody>
        <tr ng-repeat="trade in filteredTradesDetails | orderBy:sort.predicate:sort.reverse"
            ng-class="{even: $even, odd: $odd}" ng-cloak>
            <td class="nw" ng-click="setTradeId(trade.TradeId)" ng-class="{active: ('account.trade.tradeDetails' | routeSegmentStartsWith)}">
                <a href="#/account/trade/tradeDetails">{{trade.TradeId}}</a>
            </td>
            <td class="nw" ng-bind="trade.ExecutionDateTime"></td>
            <td class="lalign" ng-bind="trade.Price"></td>
            <td class="nw ralign" ng-bind="trade.Volume"></td>
            <td class="ralign" ng-bind="trade.CurrencyPair"></td>
        </tr>
        <tr class="odd" ng-hide="orderDetailsTrades.length">
            <td valign="top" colspan="9" class="dataTables_empty">No trades currently available.</td>
        </tr>
        </tbody>

        %{--<thead>
        <tr role="row"><th class="lalign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_12" rowspan="1" colspan="1" aria-label="Transaction ID: activate to sort column ascending" style="width: 115px;">Transaction ID</th><th class="lalign sorting_desc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_12" rowspan="1" colspan="1" aria-sort="descending" aria-label="Executed: activate to sort column ascending" style="width: 185px;">Executed</th><th class="lalign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_12" rowspan="1" colspan="1" aria-label="Order Type: activate to sort column ascending" style="width: 100px;">Order Type</th><th class="lalign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_12" rowspan="1" colspan="1" aria-label="Pair: activate to sort column ascending">Pair</th><th class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_12" rowspan="1" colspan="1" aria-label="Price: activate to sort column ascending">Price</th><th class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_12" rowspan="1" colspan="1" aria-label="Volume: activate to sort column ascending">Volume</th><th class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_12" rowspan="1" colspan="1" aria-label="Cost: activate to sort column ascending">Cost</th></tr>
        </thead>

        <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td valign="top" colspan="7" class="dataTables_empty">No trades currently available.</td></tr></tbody></table></div><div><div class="pull-left"><div class="dataTables_info" id="DataTables_Table_12_info"></div></div><div class="pull-right"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li class="disabled"><a href="javascript: void(0);">‹</a></li><li class="disabled"><a href="javascript: void(0);">›</a></li></ul></div></div><div class="clearfix"></div></div></div>--}%
</div>
</div>
</div>
</div>
</div>
</div>
</div>