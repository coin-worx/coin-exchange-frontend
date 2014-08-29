<div class="frame manage-addresses" style="width: 760px; visibility: visible; display: block;">
    <div>
        <div class="vmarg10bot clearfix">
            <h4 class="title pull-left hmarg40right">Bitcoin withdrawal addresses</h4>
            <div class="pull-left vpad5 vmarg10top vmarg0bot alert alert-block alert-error hidden2"></div>
        </div>
        <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline" role="grid"><div class="dataTables_table_wrapper"><table class="table table-hover table-striped dataTable" data-recordcount="_TOTAL_ addresses" data-norecords="No addresses available." id="DataTables_Table_0">
            <thead>
            <tr role="row" ng-cloak>
                <th ng-click="updateSorting('OrderId')" class="lalign"
                    ng-class="getSortingClass('OrderId')" style="width: 100px;">Description</th>
                <th ng-click="updateSorting('Type')" class="lalign"
                    ng-class="getSortingClass('Type')" style="width: 100px;">Address</th>
                <th class="ralign center" style="width: 35px;">&nbsp;</th>
            </tr>
            </thead>

            <tbody role="alert" aria-live="polite" aria-relevant="all">
            <tr ng-repeat="address in filteredWithdrawAddresses"
                ng-class="{even: $even, odd: $odd}" ng-cloak>
                <td class="lalign" ng-bind="address.Description">
                </td>
                <td class="lalign" ng-bind="address.BitcoinAddress" ></td>
                <td class="center">
                    <a name="cancel" ng-click="navigateToConfirmDelete(address)" class="btn btn-danger thin tt btn-cancel">
                        <i class="icon-remove icon-white"></i>
                    </a>
                </td>
            </tr>
            <tr class="odd" ng-hide="withdrawAddresses.length">
                <td valign="top" colspan="9" class="dataTables_empty">No addresses currently available.</td>
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

                %{--<div class="pull-left">
                    <div class="dataTables_info" ng-cloak>
                        {{currentMinIndex + 1}} - {{currentMaxIndex}} of {{totalItems}} orders
                    </div>
                </div>--}%

            </div>
        </div>

        </div>
        <div class="clearfix">
            <div class="btn-toolbar pull-left">
                <button autocomplete="off" type="button" class="btn show-form hmarg20right" ng-click="navigateToWithdrawForm()">« Back</button>
                <button autocomplete="off" type="button" class="btn btn-primary show-address-add hmarg10right" ng-click="fromManageToAddAddress()"><i class="icon-plus icon-white"></i> Add address</button>
            </div>
        </div>
    </div>
</div>