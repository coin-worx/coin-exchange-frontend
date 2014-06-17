<div id="table-bids-open-wrap" class="vmarg40bot" ng-controller="BidsController">
    <h4 class="center vmarg0top">Buying</h4>

    <div id="DataTables_Table_11_wrapper" class="dataTables_wrapper form-inline" role="grid">
      <div class="dataTables_table_wrapper" style="min-height: 318px;">
       <table class="table table-hover table-striped dataTable" name="table-bids" id="DataTables_Table_11" style="width: 464px;">
        <thead>
        <tr role="row" ng-cloak>
            <th ng-click="updateSorting('')" class="lalign nw"
                ng-class="getSortingClass('')" style="width: 55px;">Cm. Vol</th>
            <th ng-click="updateSorting('')" class="lalign nw"
                ng-class="getSortingClass('')" style="width: 55px;">Cm. Cost</th>
            <th ng-click="updateSorting('')" class="lalign nw"
                ng-class="getSortingClass('')" style="width: 55px;">Cost</th>
            <th ng-click="updateSorting('BidPrice')" class="lalign nw"
                ng-class="getSortingClass('BidPrice')" style="width: 55px;">Price</th>
            <th ng-click="updateSorting('BidVolume')" class="lalign nw"
                ng-class="getSortingClass('BidVolume')" style="width: 165px;">Volume</th>
        </tr>
        </thead>

        <tbody>
        <tr ng-repeat="order in filteredOrderBook | orderBy:'BidPrice':sort.reverse"
            ng-class="{even: $even, odd: $odd}" ng-cloak>
            <td ng-if="order.BidPrice != '0'" class="nw ralign" ng-bind="order.BidPrice"></td>
            <td ng-if="order.BidVolume != '0'" class="ralign" ng-bind="order.BidVolume"></td>
        </tr>
        <tr class="odd" ng-hide="orderBook.length">
            <td valign="top" colspan="9" class="dataTables_empty">No orders currently available.</td>
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
                {{currentMinIndex + 1}} - {{currentMaxIndex}} of {{totalItems}} bids
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
</div>
</div>