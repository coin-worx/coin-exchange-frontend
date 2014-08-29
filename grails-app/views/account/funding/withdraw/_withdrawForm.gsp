<div class="frame withdraw-wrap" style="width: 788px;">
    <div class="center vpad10" ng-show="getErrors()">
        <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
    </div>
    <form class="form-horizontal medium form-control-left" autocomplete="off" method="post" data-asset="XXBT" novalidate="novalidate"
          name="withdrawForm1" ng-submit="reviewParamsBeforeCommit(withdrawForm1)">
        <div class="control-group">
            <label class="control-label">Address</label>
            <div class="controls">
                <div class="ib hmarg20right top">
                    <select name="address" class="input-xmlarge select-address" autocomplete="off" ng-model="bitcoinAddress" ng-options="address.BitcoinAddress for address in withdrawAddresses">
                        <option value="">Select Address</option>
                    </select>
                </div><div class="ib top">
                <div class="btn-toolbar vmarg0">
                    <a class="btn btn-medium btn-primary show-address-add hmarg10right "><i class="icon icon-plus icon-white"></i> Add address</a>
                    <a class="btn btn-medium show-address-list"><i class="icon icon-list"></i> Manage</a>
                </div>
            </div>
                <p class="control-hint">
                    Choose a Bitcoin address to withdraw to. </p>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Amount</label>
            <div class="controls span4 hmarg0">
                <input type="text" autocomplete="off" class="ralign amount" style="width: 95%" ng-model="amount" name="amount" value="">
                <div class="vmarg10top funding-info spaced">
                    <table class="stats-dots">
                        <tbody><tr>
                            <td class="k">Minimum</td>
                            <td class="dots"></td>
                            <td>
                                <a class="amount-pop tt" ></a>
                            </td>
                        </tr>
                        </tbody></table>
                    <table class="stats-dots">
                        <tbody><tr>
                            <td class="k">Maximum</td>
                            <td class="dots"></td>
                            <td>
                                <a class="amount-pop tt" ng-bind="withdrawLimits.MaximumWithdraw"></a>
                            </td>
                        </tr>
                        </tbody></table>
                    <table class="stats-dots">
                        <tbody><tr>
                            <td class="k">Balance</td>
                            <td class="dots"></td>
                            <td>
                                <a class="amount-pop" ng-bind="withdrawLimits.CurrentBalance"></a> </td>
                        </tr>
                        </tbody></table>
                </div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Fee</label>
            <div class="controls">
                <span class="readonly fee" ng-bind="withdrawLimits.Fee">
                </span>
            </div>
        </div>
        <div class="control-group vpad20top ">
            <div class="controls">
                <button class="btn btn-success btn-large btn-review cancel" type="submit" autocomplete="off">Review Withdrawal »</button>
                <input type="hidden" name="asset" value="XXBT">
                <input type="hidden" name="method" value="Bitcoin">
            </div>
        </div>
    </form>
</div>