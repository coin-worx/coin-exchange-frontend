<div ng-controller="NewOrderSimpleBidsController">
    <h5 class="center vmarg0top">Buying</h5>
    <div id="DataTables_Table_11_wrapper" class="dataTables_wrapper form-inline" role="grid">
        <div class="dataTables_table_wrapper" style="min-height: 318px;">
            <table class="table table-hover table-striped dataTable" name="table-bids" id="DataTables_Table_11" style="width: 464px;">
                <thead>
                <tr role="row" ng-cloak>
                    <th ng-click="updateSorting('CmVol')" class="lalign nw"
                        ng-class="getSortingClass('CmVol')" style="width: 60px;">Cm. Vol</th>
                    <th ng-click="updateSorting('CmCost')" class="lalign nw"
                        ng-class="getSortingClass('CmCost')" style="width: 80px;">Cm. Cost</th>
                    <th ng-click="updateSorting('Cost')" class="lalign nw"
                        ng-class="getSortingClass('Cost')" style="width: 80px;">Cost</th>
                    <th ng-click="updateSorting('BidPrice')" class="lalign nw"
                        ng-class="getSortingClass('BidPrice')" style="width: 60px;">Price</th>
                    <th ng-click="updateSorting('BidVolume')" class="lalign nw"
                        ng-class="getSortingClass('BidVolume')" style="width: 60px;">Volume</th>
                </tr>
                </thead>

                <tbody>
                <tr ng-repeat="order in filteredOrderBook"
                    ng-class="{even: $even, odd: $odd}" ng-cloak>
                    <td class="nw ralign" ng-bind="order.CmVol"></td>
                    <td class="nw ralign" ng-bind="order.CmCost"></td>
                    <td class="ralign" ng-bind="order.Cost"></td>
                    <td class="nw ralign" ng-bind="order.BidPrice"></td>
                    <td class="ralign" ng-bind="order.BidVolume"></td>
                </tr>
                <tr class="odd" ng-hide="orderBook.length">
                    <td valign="top" colspan="9" class="dataTables_empty">No Bids currently available.</td>
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
