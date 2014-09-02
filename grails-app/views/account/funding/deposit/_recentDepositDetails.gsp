<p>Select an asset to deposit from the menu and follow the instructions on the displayed form. Please see the FAQ for questions or
contact support for any issues.
</p>
<div class="clearfix vmarg20bot">
    <h5 class="title vpad10top pull-left" ng-bind-template="Deposit {{deposit.DepositId}}"></h5>
    <div class="pull-right">
        <button class="btn btn-small back" ng-click="navigateToRecentDeposits()">« Back</button>
    </div>
</div>
<div class="stats-dots-wrap detail-column">
    <div>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Currency</td>
                <td class="dots">&nbsp;</td>
                <td ng-bind="deposit.Currency"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Date</td>
                <td class="dots">&nbsp;</td>
                <td ng-bind="deposit.Date"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Address</td>
                <td class="dots">&nbsp;</td>
                <td ng-bind="deposit.BitcoinAddress"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Transaction ID</td>
                <td class="dots">&nbsp;</td>
                <td ng-bind="deposit.TransactionId"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Status</td>
                <td class="dots">&nbsp;</td>
                <td class="mono">
                    <span ng-if="deposit.Status === 'Confirmed'" class="label label-success" ng-bind="deposit.Status"></span>
                    <span ng-if="deposit.Status === 'Cancelled'" class="label label-important" ng-bind="deposit.Status"></span>
                    <span ng-if="deposit.Status === 'Pending'" class="label label-info" ng-bind="deposit.Status"></span>
                </td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Amount</td>
                <td class="dots">&nbsp;</td>
                <td class="mono" ng-bind="deposit.Amount"></td>
            </tr>
            </tbody>
        </table>
        <table class="stats-dots">
            <tbody>
            <tr>
                <td class="k">Fee</td>
                <td class="dots">&nbsp;</td>
                <td class="mono" ng-bind="deposit.Fee"></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>