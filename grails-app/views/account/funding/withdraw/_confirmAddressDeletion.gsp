<div class="frame frame-active" style="width: 788px; visibility: visible;">
    <form class="form-horizontal form-control-left no-left-margin" method="post">
        <div class="alert alert-block alert-error hidden2" style="display: none;"></div>
        <div class="address-delete-detail">
            <div>
                <div class="control-group">
                    <label class="control-label">Bitcoin address</label>
                    <div class="controls"><span class="readonly" ng-bind="currentWithdrawAddress.BitcoinAddress"></span></div></div>
                <div class="control-group"><label class="control-label">Description</label><div class="controls" >
                    <span class="readonly" ng-bind="currentWithdrawAddress.Description"></span></div>
                    <input name="description" type="hidden" >
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="control-group vpad20top">
                <div class="controls">
                    <div class="btn-toolbar">
                        <button type="button" class="btn btn-danger btn-large back hmarg20right" ng-click="navigateToManageWithdraw()">« Cancel</button>
                        <button type="submit" class="btn btn-success btn-large delete-address" autocomplete="off" ng-click="deleteAddress()">
                            <i class="icon icon-white icon-ok"></i> Delete address
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>