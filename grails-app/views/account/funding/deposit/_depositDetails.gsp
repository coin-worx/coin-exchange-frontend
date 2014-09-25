<div ng-controller="depositDetailsController">
    <div class="pull-right span4 hmarg20left vmarg30top">
        <div class="alert alert-info alert-even funding-info">
            <table class="stats-dots">
                <tbody><tr>
                    <td class="k">Daily limit</td>
                    <td class="dots"></td>
                    <td ng-bind-template="{{depositLimits.DailyLimitUsed}} / $ {{depositLimits.DailyLimit}}"></td>
                </tr>
                <tr>
                    <td colspan="3" class="control-hint ralign"></td>
                </tr>
                </tbody></table>
            <table class="stats-dots vmarg0bot">
                <tbody><tr>
                    <td class="k">Monthly limit</td>
                    <td class="dots"></td>
                    <td ng-bind-template="{{depositLimits.MonthlyLimitUsed}} / $ {{depositLimits.MonthlyLimit}}"></td>
                </tr>
                <tr>
                    <td colspan="3" class="control-hint ralign"></td>
                </tr>
                </tbody></table>
            <table class="stats-dots">
                <tbody><tr>
                    <td class="k">Current balance</td>
                    <td class="dots"></td>
                    <td ng-bind="depositLimits.CurrentBalance"></td>
                </tr>
                </tbody></table>
            <table class="stats-dots vmarg0bot">
                <tbody><tr>
                    <td class="k"><strong>Maximum deposit</strong></td>
                    <td class="dots"></td>
                    <td ng-bind="depositLimits.MaximumDeposit"><strong></strong></td>
                </tr>
                <tr>
                    <td colspan="3" class="control-hint ralign"></td>
                </tr>
                </tbody></table>
        </div>
        <div class="center vmarg10">
            <a class="center" href="/u/verify"><small>Increase funding limits</small></a>
        </div>
    </div>

    <div class="method-wrap" data-asset="XXBT" data-method="Bitcoin" ng-controller="depositDetailsController">
        <div class="title-wrap">
            <h5 class="title">Deposit</h5>
            <p>Deposit Bitcoins to your account by sending them to one of the deposit addresses shown below. If no address appears, click "Generate New Address" to generate one.</p> <ul> <li>The deposit addresses can change from deposit to deposit. So each time you deposit, you'll need to visit this page to get your current deposit addresses. You can use the available button to generate new addresses.</li> <li>To help avoid mistakes in copying an address to your client, use the available buttons to either launch your client with the deposit address automatically entered (only available for Armory, Electrum, MultiBit, and Bitcoin-QT V0.7+ (Windows only) wallet software), or select the address for copy + paste to your client. Always double-check to make sure the address copied correctly. Please note that we are not responsible for coins mistakenly sent to the wrong address. </li> <li>Don't exceed your daily or monthly funding limits. If you exceed the limits, your account will be frozen until you get verified for higher limits, or until the funds are returned to you. </li> <li>Six confirmations are required before the funds are available for trading.</li> </ul> </div>
        <div class="vmarg40top">
            <div class="vpad10 alert alert-block alert-error hidden2"></div>
            <div class="address-wrap">
                <div style="display: block;">
                    <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline" role="grid">
                        <div class="pull-right"><div class="dataTables_info" id="DataTables_Table_0_info"></div>
                        </div>
                        <div class="center vpad10" ng-show="getErrors()">
                            <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
                        </div>
                        <div class="dataTables_table_wrapper">
                            <table class="table table-hover table-striped dataTable table-address" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
                                <thead>
                               %{-- <tr role="row"><th class="lalign sorting_disabled bigger" role="columnheader" rowspan="1" colspan="1">Bitcoin address</th><th class="lalign sorting_disabled" role="columnheader" rowspan="1" colspan="1" style="width: 140px;">Status</th><th class="sorting_disabled ralign" role="columnheader" rowspan="1" colspan="1" style="width: 175px;"></th></tr>--}%
                                <tr role="row">
                                    <th style="width: 55px;">Bitcoin Address</th>
                                    <th ng-click="updateSorting('Status')" class="lalign nw"
                                        ng-class="getSortingClass('Status')" style="width: 160px;">Status</th>
                                    <th class="lalign nw" style="width: 160px;"></th>
                                </tr>
                                </thead>

                                <tbody role="alert" aria-live="polite" aria-relevant="all">

                                <tr ng-repeat="address in filteredDepositAddresses"
                                    ng-class="{even: $even, odd: $odd}" ng-cloak>
                                    <td class="bigger" ng-bind="address.Address"></td>
                                    <td class="bigger" ng-bind="address.Status" ng-style="customStyle.style"></td>
                                    <td class="ralign">
                                        <div>
                                            <button type="button" name="select" title="Select address" data-target-id="addy-1CWLY42J5X69eJK8yiCfU2B3mrpmqFrUwa" tabindex="-1" class="btn btn-select hmarg20right btn-primary thin">
                                                <i class="icon-arrow-left"></i> Select</button><a name="launch" title="Launch client" tabindex="-1" href="bitcoin:1CWLY42J5X69eJK8yiCfU2B3mrpmqFrUwa?label=Kraken" class="btn btn-select thin">
                                            <i class="icon-external-link"></i> Launch</a>
                                        </div>
                                    </td>
                                </tr>

                                <tr class="odd" ng-hide="depositAddresses.length">
                                    <td valign="top" colspan="5" class="dataTables_empty">No addresses yet.</td>
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
                                        {{currentMinIndex + 1}} - {{currentMaxIndex}} of {{totalItems}} addresses
                                    </div>
                                </div>--}%
                            </div>
                        </div>
                        %{--<div class="pull-right">
                            <div class="dataTables_paginate paging_bootstrap pagination"><ul><li class="disabled">
                                <a href="javascript: void(0);">‹</a></li><li class="disabled"><a href="javascript: void(0);">›</a></li></ul>
                            </div>
                        </div>--}%
                    </div>
                    <div class="controls btn-toolbar pull-left vpad5top">
                        <button class="btn btn-success btn-medium btn-gen-funding-id ib top" type="submit" autocomplete="off" ng-click="createNewDepositAddress()">
                            <i class="icon icon-refresh"></i> Generate New Address</button>
                    </div>
                    <div class="clearfix"></div>
                    <div class="vmarg40top">
                        <span class="control-hint"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>