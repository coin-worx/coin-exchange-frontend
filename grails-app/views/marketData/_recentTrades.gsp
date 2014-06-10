<div id="table-orderlist-open-wrap" class="vmarg40bot" ng-controller="RecentTradesController">

    <div class="pull-left">
        <div class="dataTables_info" ng-cloak>
            {{currentMinIndex + 1}} - {{currentMaxIndex}} of {{totalItems}} Trades
        </div>
    </div>

    <table class="table table-hover table-striped dataTable">
        <thead>
        <tr role="row" ng-cloak>
            <th ng-click="updateSorting('Time')" class="lalign nw"
                ng-class="getSortingClass('Time')" style="width: 55px;">Time</th>
            %{--<th ng-click="updateSorting('Side')" class="lalign nw"
                ng-class="getSortingClass('Side')" style="width: 165px;">OrderSide</th>--}%
            <th ng-click="updateSorting('Price')" class="lalign nw"
                ng-class="getSortingClass('Price')" style="width: 55px;">Price</th>
            <th ng-click="updateSorting('Volume')" class="lalign nw"
                ng-class="getSortingClass('Volume')" style="width: 165px;">Volume</th>
        </tr>
        </thead>

        <tbody>
        <tr ng-repeat="trade in filteredTrades | orderBy:sort.predicate:sort.reverse"
            ng-class="{even: $even, odd: $odd}" ng-cloak>
            <td class="nw ralign" ng-bind="trade.Time"></td>
            %{--<td class="ralign" ng-bind="trade.Side"></td>--}%
            <td class="ralign" ng-bind="trade.Price"></td>
            <td class="ralign" ng-bind="trade.Volume"></td>
        </tr>
        <tr class="odd" ng-hide="trades.length">
            <td valign="top" colspan="9" class="dataTables_empty">No trades currently available.</td>
        </tr>
        </tbody>
    </table>

    <div ng-cloak>
        <div class="pull-right">
            <pagination total-items="totalItems" items-per-page="itemsPerPage" ng-model="currentPage" num-pages="numPages"
                        previous-text="&lsaquo;" next-text="&rsaquo;"
                        max-size="maxSize" class="pagination-sm" ng-change="pageChanged()"
                        boundary-links="false" rotate="false"></pagination>
        </div>

    </div>

    <div class="row">
        <div class="span3">
            <div class="dataTables_info"></div>
        </div>

        <div class="span5 offset1"></div>
    </div>
</div>

%{--
<div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline" role="grid" ng-controller="OrderBookController">
    <div class="control-hint">
        <div class="dataTables_info" id="DataTables_Table_0_info">1 - 15 of 250 trades
        </div>
    </div>
    <div class="dataTables_table_wrapper" style="min-height: 489px;">
        <table class="table table-hover table-striped dataTable" name="table-tradehist" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
            <thead>
            <tr role="row">
                <th class="nw sorting_desc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="descending" aria-label="Time: activate to sort column ascending" style="width: 100px;">Time</th><th class="ralign lalign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Order: activate to sort column ascending" style="width: 40px;">Order</th><th class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Price: activate to sort column ascending">Price</th><th class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Volume: activate to sort column ascending">Volume</th></tr>
            </thead>

            <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td class="nw">21:21:42 +00:00</td><td class="lalign pos">buy</td><td class="ralign">$448.26174</td><td class="ralign">0.00227358</td></tr><tr class="even"><td class="nw">20:53:55 +00:00</td><td class="lalign pos">buy</td><td class="ralign">$448.53227</td><td class="ralign">0.00099999</td></tr><tr class="odd"><td class="nw">20:52:08 +00:00</td><td class="lalign pos">buy</td><td class="ralign">$448.53024</td><td class="ralign">0.00099999</td></tr><tr class="even"><td class="nw">20:09:05 +00:00</td><td class="lalign neg">sell</td><td class="ralign">$441.809<span class="deczeros">00</span></td><td class="ralign">0.07474314</td></tr><tr class="odd"><td class="nw">19:01:29 +00:00</td><td class="lalign neg">sell</td><td class="ralign">$441.81<span class="deczeros">000</span></td><td class="ralign">0.05<span class="deczeros">000000</span></td></tr><tr class="even"><td class="nw">16:04:38 +00:00</td><td class="lalign neg">sell</td><td class="ralign">$441.81<span class="deczeros">000</span></td><td class="ralign">0.04888<span class="deczeros">000</span></td></tr><tr class="odd"><td class="nw">11:55:30 +00:00</td><td class="lalign neg">sell</td><td class="ralign">$442.08001</td><td class="ralign">0.35164024</td></tr><tr class="even"><td class="nw">09:08:00 +00:00</td><td class="lalign neg">sell</td><td class="ralign">$443.35257</td><td class="ralign">0.48171653</td></tr><tr class="odd"><td class="nw">09:08:00 +00:00</td><td class="lalign neg">sell</td><td class="ralign">$443.51351</td><td class="ralign">2.0<span class="deczeros">0000000</span></td></tr><tr class="even"><td class="nw">09:08:00 +00:00</td><td class="lalign neg">sell</td><td class="ralign">$443.91857</td><td class="ralign">0.01<span class="deczeros">000000</span></td></tr><tr class="odd"><td class="nw">09:08:00 +00:00</td><td class="lalign neg">sell</td><td class="ralign">$445.0<span class="deczeros">0000</span></td><td class="ralign">1.0<span class="deczeros">0000000</span></td></tr><tr class="even"><td class="nw">09:08:00 +00:00</td><td class="lalign neg">sell</td><td class="ralign">$446.22397</td><td class="ralign">0.01641347</td></tr><tr class="odd"><td class="nw">09:08:00 +00:00</td><td class="lalign neg">sell</td><td class="ralign">$446.22398</td><td class="ralign">0.49187<span class="deczeros">000</span></td></tr><tr class="even"><td class="nw">08:55:19 +00:00</td><td class="lalign pos">buy</td><td class="ralign">$451.99976</td><td class="ralign">0.73382909</td></tr><tr class="odd"><td class="nw">08:55:19 +00:00</td><td class="lalign pos">buy</td><td class="ralign">$450.68398</td><td class="ralign">0.01617091</td></tr></tbody></table></div><div class="center"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li class="disabled"><a href="javascript: void(0);">‹</a></li><li class="active"><a href="javascript: void(0);">1</a></li><li><a href="javascript: void(0);">2</a></li><li><a href="javascript: void(0);">3</a></li><li><a href="javascript: void(0);">4</a></li><li><a href="javascript: void(0);">5</a></li><li class="dummy"><a href="javascript: void(0);">…</a></li><li><a href="javascript: void(0);">17</a></li><li><a href="javascript: void(0);">›</a></li></ul></div></div>
</div>--}%
