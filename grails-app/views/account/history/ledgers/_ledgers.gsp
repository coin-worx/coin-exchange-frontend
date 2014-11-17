<div ng-controller="ledgerController">
<div class="clearfix">
    <div class="pull-left">
        <h4 class="title">Ledger</h4>
    </div>
    <!--<div class="pull-right">
        <div class="btn-toolbar">
            <a title="" data-original-title="" class="btn btn-small btn-primary btn-filter"><i class="icon-filter"></i> <span>Filters (0)</span></a>
            <div class="hidden2" id="filter-content">
                <div class="input-wrap">
                    <div class="input-title checkboxes"><label><input class="enabler" target-input-id="currency" name="currency-enable" value="1" type="checkbox"> <span>Currency</span></label></div>
                    <select name="currency" multiple="multiple" id="currency" disabled="disabled" class="input-small" autocomplete="off"><option value="ZEUR">EUR</option><option value="KFEE">FEE</option><option value="ZKRW">KRW</option><option value="XLTC">LTC</option><option value="XNMC">NMC</option><option value="XSTR">STR</option><option value="ZUSD">USD</option><option value="XXBT">XBT</option><option value="XXDG">XDG</option><option value="XXRP">XRP</option><option value="XXVN">XVN</option></select> </div>
                <div class="input-wrap">
                    <div class="input-title checkboxes"><label><input autocomplete="off" class="enabler" target-input-id="startpicker" name="start-enable" value="1" type="checkbox"> <span>Start Date/Time</span></label></div>
                    <div class="datetime" name="start" id="startpicker">
                        <div class="ib input-append datepicker date hmarg5right" data-date-format="mm-dd-yy">
                            <input autocomplete="off" disabled="disabled" name="startdate" readonly="readonly" class="input-smaller hmarg0right" default="08-26-14" value="08-26-14" type="text"><span class="add-on"><i class="icon-calendar"></i></span>
                        </div>
                        <div class="ib input-append bootstrap-timepicker-component">
                            <input autocomplete="off" disabled="disabled" name="starttime" readonly="readonly" class="timepicker input-smaller hmarg0right" value="" type="text"><span class="add-on"><i class="icon-time"></i> </span>
                        </div>
                    </div>
                </div>
                <div class="input-wrap">
                    <div class="input-title checkboxes"><label><input autocomplete="off" class="enabler" target-input-id="endpicker" name="end-enable" value="1" type="checkbox"> <span>End Date/Time</span></label></div>
                    <div class="datetime" name="end" id="endpicker">
                        <div class="ib input-append datepicker date hmarg5right" data-date-format="mm-dd-yy">
                            <input autocomplete="off" disabled="disabled" name="enddate" readonly="readonly" class="input-smaller hmarg0right" default="09-02-14" value="09-02-14" type="text"><span class="add-on"><i class="icon-calendar"></i></span>
                        </div>
                        <div class="ib input-append bootstrap-timepicker-component">
                            <input autocomplete="off" disabled="disabled" name="endtime" readonly="readonly" class="timepicker input-smaller hmarg0right" value="" type="text"><span class="add-on"><i class="icon-time"></i> </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>-->
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