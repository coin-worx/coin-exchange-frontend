<div class="hidden2" style="display: block;"%{-- ng-controller="recentWithdrawalsController"--}%>
    <p>Select an asset to withdraw from the menu and follow the instructions on the displayed form. Please see the <a
            href="/help/faq#withdraws-and-withdrawals">FAQ</a> for questions or <a
            href="https://support.kraken.com">contact support</a> for any issues.</p>

    <div class="slider vmarg40top" id="slider-withdrawals">
        <div class="transfer" style="width: 2364px;">
            <div class="frame" style="width: 788px;">
                <div class="clearfix vmarg10bot">
                    <h5 class="pull-left title vpad10top hmarg40right">Recent withdrawals</h5>

                    <div class="center vpad10" ng-show="getErrors()">
                        <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
                    </div>
                </div>

                <div id="table-withdrawals_wrapper" class="dataTables_wrapper form-inline" role="grid">
                    <div class="dataTables_table_wrapper"><table id="table-withdrawals"
                                                                 class="table table-hover table-striped dataTable table-withdrawal"
                                                                 aria-describedby="table-withdrawals_info">
                        <thead>
                        <tr role="row">
                            <th ng-click="updateSorting('WithdrawId')" class="lalign nw"
                                ng-class="getSortingClass('WithdrawId')" style="width: 160px;">Id</th>
                            <th ng-click="updateSorting('DateTime')" class="lalign nw"
                                ng-class="getSortingClass('DateTime')" style="width: 120px;">Date</th>
                            <th ng-click="updateSorting('Type')" class="lalign nw"
                                ng-class="getSortingClass('Type')" style="width: 80px;">Type</th>
                            <th ng-click="updateSorting('Amount')" class="ralign"
                                ng-class="getSortingClass('Amount')" style="width: 50px;">Amount</th>
                            <th ng-click="updateSorting('Fee')" class="ralign"
                                ng-class="getSortingClass('Fee')" style="width: 50px;">Fee</th>
                            <th ng-click="updateSorting('Status')" class="lalign"
                                ng-class="getSortingClass('Status')" style="width: 50px;">Status</th>
                            <th class="ralign center" style="width: 35px;">&nbsp;</th>
                        </tr>
                        </thead>

                        <tbody role="alert" aria-live="polite" aria-relevant="all">
                        <tr ng-repeat="withdraw in filteredRecentWithdrawals"
                            ng-class="{even: $even, odd: $odd}" ng-cloak>
                            <td class="lalign" tab-right-click="navigateToRecentWithdrawDetails()" ng-click="navigateToRecentWithdrawDetails(withdraw)">
                                <a href="">{{withdraw.WithdrawId | limitTo : 8}}</a>
                            </td>
                            <td class="lalign" ng-bind="withdraw.DateTime"></td>
                            <td class="lalign" ng-bind="withdraw.Type"></td>
                            <td class="ralign" ng-bind="withdraw.Amount"></td>
                            <td class="ralign" ng-bind="withdraw.Fee"></td>
                            <td class="lalign">
                                <span class="label mono" ng-class="setLabelStyles(withdraw.Status)" ng-bind="withdraw.Status"></span>
                            </td>
                            <td class="center">
                                <a name="cancel" ng-if="withdraw.Status == 'Pending'" ng-click="cancelWithdraw(withdraw)" class="btn btn-danger thin tt btn-cancel">
                                    <i class="icon-remove icon-white"></i>
                                </a>
                            </td>
                        </tr>

                        <tr class="odd" ng-hide="recentWithdrawals.length">
                            <td valign="top" colspan="5" class="dataTables_empty">No withdrawals yet.</td>
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
                                    {{currentMinIndex + 1}} - {{currentMaxIndex}} of {{totalItems}} Withdrawals
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        %{--<div class="frame" style="width: 788px; visibility: hidden;">
          <h4 class="title center">Confirm Withdrawal Cancellation</h4>

          <div class="hidden2 center withdraw-cancel-result">
            <div class="alert alert-block alert-success">Withdrawal cancellation was initiated successfully.</div>
            <button type="button" class="btn btn-large back">« Back</button>
          </div>

          <form class="form-horizontal form-control-left withdraw-cancel-form" method="post" autocomplete="off">
            <div class="withdraw-cancel-detail well review-detail small vmarg20top"></div>

            <div class="center vpad20top">
              <div class="btn-toolbar">
                <button type="button" class="btn btn-danger btn-large back hmarg20right"
                        autocomplete="off">« Back</button>
                <button type="submit" class="btn btn-success btn-large delete-address" autocomplete="off">
                  <i class="icon icon-white icon-ok"></i> Cancel withdrawal</button>
              </div>
            </div>
            <input type="hidden" name="ref" value="">
            <input type="hidden" name="asset" value="">
          </form>
        </div>

        <div class="frame" style="width: 788px; visibility: hidden;">
          <div class="clearfix vmarg20bot">
            <h5 class="title vpad10top pull-left"></h5>

            <div class="pull-right">
              <button class="btn btn-small back">« Back</button>
            </div>
          </div>

          <div class="stats-dots-wrap detail-column">
          </div>
        </div>--}%
    </div>
</div>