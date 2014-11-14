<div ng-controller="ledgerController">
<div class="clearfix">
    <div class="pull-left">
        <h4 class="title">Ledger</h4>
    </div>

</div>
<div>
    <div class="vpad10 vmarg10 alert alert-block alert-error hidden2"></div>
    <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline" role="grid"><div style="min-height: 260px;" class="dataTables_table_wrapper"><table aria-describedby="DataTables_Table_0_info" id="DataTables_Table_0" class="table table-hover table-striped dataTable table-ledger">
        <thead>
        <tr role="row">
            <th ng-click="updateSorting('LedgerId')" class="lalign nw"
                ng-class="getSortingClass('LedgerId')" style="width: 55px;">Id</th>
            <th ng-click="updateSorting('Date')" class="lalign nw"
                ng-class="getSortingClass('Date')" style="width: 160px;">Date</th>
            <th ng-click="updateSorting('Type')" class="ralign nw"
                ng-class="getSortingClass('Type')" style="width: 80px;">Type</th>
            <th ng-click="updateSorting('Currency')" class="ralign nw"
                ng-class="getSortingClass('Currency')" style="width: 80px;">Currency</th>
            <th ng-click="updateSorting('Amount')" class="ralign"
                ng-class="getSortingClass('Amount')" style="width: 115px;">Amount</th>
            <th ng-click="updateSorting('Fee')" class="lalign"
                ng-class="getSortingClass('Fee')" style="width: 50px;">Fee</th>
            <th ng-click="updateSorting('Balance')" class="lalign"
                ng-class="getSortingClass('Balance')" style="width: 50px;">Balance</th>
        </tr>
        </thead>

        <tbody aria-relevant="all" aria-live="polite" role="alert">
        <tr ng-repeat="ledger in filteredLedgers"
            ng-class="{even: $even, odd: $odd}" ng-cloak>
            <td class="lalign" ng-click="navigateToLedgerDetails(ledger.LedgerId)" tab-right-click="navigateToLedgerDetails(ledger.LedgerId)">
                <a href="{{locationPath}}">{{ledger.LedgerId | limitTo : 8}}</a>
            </td>
            <td class="lalign" ng-bind="ledger.DateTime"></td>
            <td class="lalign" ng-bind="ledger.LedgerType"></td>
            <td class="ralign" ng-bind="ledger.Currency"></td>
            <td class="ralign" ng-bind="ledger.Amount"></td>
            <td class="ralign" ng-bind="ledger.Fee"></td>
            <td class="ralign" ng-bind="ledger.Balance"></td>
        </tr>

        <tr class="odd" ng-hide="ledgers.length">
            <td valign="top" colspan="5" class="dataTables_empty">No Ledgers yet.</td>
        </tr>
        </tbody>
    </table>
        <div ng-cloak>
            <div class="pull-right">
                <pagination total-items="totalItems" ng-model="currentPage" num-pages="numPages"
                            previous-text="&lsaquo;" next-text="&rsaquo;" first-text="&laquo;" last-text="&raquo;"
                            max-size="maxSize" class="pagination-sm" ng-change="pageChanged()"
                            boundary-links="true" rotate="false"></pagination>
            </div>

            <div class="pull-left">
                <div class="dataTables_info" ng-cloak>
                    {{currentMinIndex + 1}} - {{currentMaxIndex}} of {{totalItems}} deposits
                </div>
            </div>
        </div>
    </div>
    </div>
</div>
</div>