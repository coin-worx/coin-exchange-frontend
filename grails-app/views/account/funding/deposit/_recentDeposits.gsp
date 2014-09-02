<div>
<p>Select an asset to deposit from the menu and follow the instructions on the displayed form. Please see the <a
        href="/help/faq#deposits-and-withdrawals">FAQ</a> for questions or <a
        href="https://support.kraken.com">contact support</a> for any issues.
</p>

<div class="vmarg40top slider" id="slider-deposit-list">
    <div class="transfer" style="width: 1576px;">
        <div class="frame" style="width: 788px;">
            <div class="hidden2" style="display: block;">
                <div class="vmarg10 alert alert-block alert-error doc-error hidden2"></div>

                <div class="clearfix vmarg20top vmarg10bot">
                    <h5 class="pull-left table-title title">Recent Bitcoin deposits</h5>

                    <div class="pull-right">
                        <div class="input-prepend">
                            <span class="add-on">Asset</span>
                            <select name="select-asset" autocomplete="off" class="select-asset input-medium"><option
                                    selected="selected" value="XXBT">Bitcoin</option>
                                    %{--<option value="XXRP">Ripple</option><option
                                    value="XLTC">Litecoin</option><option value="XNMC">Namecoin</option><option
                                    value="XXVN">Ven</option><option value="XXDG">Dogecoin</option>--}%
                            </select></div>

                        <div class="input-prepend hidden2 hmarg20left">
                            <span class="add-on">Method</span>
                            <select name="select-method" autocomplete="off"
                                    class="select-method input-medium"><option>Bitcoin</option></select></div>
                    </div>
                </div>

                <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline" role="grid"><div
                        class="dataTables_table_wrapper"><table class="table table-hover table-striped dataTable table-deposit"
                                                                id="DataTables_Table_0"
                                                                aria-describedby="DataTables_Table_0_info">
                        <thead>
                        <tr role="row">
                            <th ng-click="updateSorting('DepositId')" class="lalign nw"
                                ng-class="getSortingClass('DepositId')" style="width: 55px;">Id</th>
                            <th ng-click="updateSorting('Date')" class="lalign nw"
                                ng-class="getSortingClass('Date')" style="width: 160px;">Date</th>
                            <th ng-click="updateSorting('Description')" class="ralign nw"
                                ng-class="getSortingClass('Description')" style="width: 80px;">Description</th>
                            <th ng-click="updateSorting('Amount')" class="ralign"
                                ng-class="getSortingClass('Amount')" style="width: 115px;">Amount</th>
                            <th ng-click="updateSorting('Status')" class="lalign"
                                ng-class="getSortingClass('Status')" style="width: 50px;">Status</th>
                        </tr>
                        </thead>

                        <tbody role="alert" aria-live="polite" aria-relevant="all">
                        <tr ng-repeat="deposit in filteredDepositLedgers"
                            ng-class="{even: $even, odd: $odd}" ng-cloak>
                            <td class="lalign" ng-click="navigateToRecentDepositDetails(deposit)">
                                <a href="">{{deposit.DepositId | limitTo : 8}}</a>
                            </td>
                            <td class="lalign" ng-bind="deposit.Date"></td>
                            <td class="lalign" ng-bind="deposit.Description"></td>
                            <td class="ralign" ng-bind="deposit.Amount"></td>
                            <td class="lalign">
                                <span class="label mono" ng-class="setLabelStyles(deposit.Status)" ng-bind="deposit.Status"></span>
                            </td>
                        </tr>

                        <tr class="odd" ng-hide="depositLedgers.length">
                            <td valign="top" colspan="5" class="dataTables_empty">No desposits yet.</td>
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

                    %{--<div><div class="pull-left"><div class="dataTables_info" id="DataTables_Table_0_info"></div></div>

                        <div class="pull-right"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li
                                class="disabled"><a href="javascript: void(0);">‹</a></li><li class="disabled"><a
                                href="javascript: void(0);">›</a></li></ul></div></div>

                        <div class="clearfix"></div>
                    </div>--}%
                </div>
            </div>
        </div>

        %{--<div class="frame" style="width: 788px; visibility: hidden;">
            <div class="clearfix vmarg20">
                <h5 class="title pull-left"></h5>

                <div class="pull-right">
                    <button class="btn btn-small back">« Back</button>
                </div>
            </div>

            <div class="stats-dots-wrap detail-column">
            </div>
        </div>--}%
    </div>
</div>
</div>