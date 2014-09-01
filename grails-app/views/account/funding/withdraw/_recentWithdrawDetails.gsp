<p>Select an asset to deposit from the menu and follow the instructions on the displayed form. Please see the <a
        href="/help/faq#deposits-and-withdrawals">FAQ</a> for questions or <a
        href="https://support.kraken.com">contact support</a> for any issues.
</p>
<div class="clearfix vmarg20bot">
    <h5 class="title vpad10top pull-left" ng-bind-template="Withdrawal {{withdraw.WithdrawId}}"></h5>
    <div class="pull-right">
        <button class="btn btn-small back" ng-click="navigateToRecentWithdrawals()">« Back</button>
    </div>
</div>
<div class="stats-dots-wrap detail-column">
    <div>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Type</td>
                <td class="dots">&nbsp;</td>
                <td ng-bind="withdraw.Type"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Date</td>
                <td class="dots">&nbsp;</td>
                <td ng-bind="withdraw.DateTime"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Address</td>
                <td class="dots">&nbsp;</td>
                <td ng-bind="withdraw.BitcoinAddress"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Transaction ID</td>
                <td class="dots">&nbsp;</td>
                <td ng-bind="withdraw.TransactionId"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Status</td>
                <td class="dots">&nbsp;</td>
                <td class="mono">
                    <span ng-if="withdraw.Status === 'Confirmed'" class="label label-success" ng-bind="withdraw.Status"></span>
                    <span ng-if="withdraw.Status === 'Cancelled'" class="label label-important" ng-bind="withdraw.Status"></span>
                    <span ng-if="withdraw.Status === 'Pending'" class="label label-info" ng-bind="withdraw.Status"></span>
                </td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Amount</td>
                <td class="dots">&nbsp;</td>
                <td class="mono" ng-bind="withdraw.Amount"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Fee</td>
                <td class="dots">&nbsp;</td>
                <td class="mono" ng-bind="withdraw.Fee"></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>