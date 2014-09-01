<div class="frame review-wrap frame-active" style="width: 788px; visibility: visible; display: block;">
    <h5 class="title center">Confirm withdrawal</h5>
    <div class="review-result hidden2 center" style="display: none;">
        <a href="/u/funding/withdraw?asset=XXBT" class="btn hmarg40right btn-large reload">« Back</a>
        <a href="/u/funding/withdraw" class="btn btn-large btn-primary">View withdrawals</a>
    </div>
    <form class="form-horizontal form-control-left no-left-margin" method="post" novalidate="novalidate">
        <div class="alert alert-block alert-error hidden2" style="display: none;"></div>
        <div class="review-detail well vmarg20"><div>
            <table class="stats-dots">
                <tbody>
                <tr>
                    <td class="k">Address</td>
                    <td class="dots">&nbsp;</td>
                    <td ng-bind="bitcoinAddress.BitcoinAddress"></td>
                </tr>
                </tbody>
            </table>
            <table class="stats-dots">
                <tbody>
                <tr>
                    <td class="k">Amount</td>
                    <td class="dots">&nbsp;</td>
                    <td ng-bind="amount"></td>
                </tr>
                </tbody>
            </table>
            <table class="stats-dots">
                <tbody>
                <tr>
                    <td class="k">Fee</td>
                    <td class="dots">&nbsp;</td>
                    <td ng-bind="withdrawLimits.Fee">
                    </td>
                </tr>
                </tbody>
            </table>
            <table class="stats-dots">
                <tbody>
                <tr>
                    <td class="k">Withdrawal Net Total</td>
                    <td class="dots">&nbsp;</td>
                    <td ng-bind="withdrawNetTotal"></td></tr>
                </tbody>
            </table>
        </div>
        </div>
        <div class="btn-toolbar vpad20top center">
            <button type="button" class="btn btn-danger btn-large back hmarg20right" autocomplete="off" ng-click="navigateToWithdrawForm()">« Cancel</button>
            <button type="submit" class="btn btn-success btn-large cancel" autocomplete="off" ng-click="commitWithdraw()">
                <i class="icon icon-white icon-ok"></i> Confirm withdrawal
            </button>
        </div>
    </form>
</div>