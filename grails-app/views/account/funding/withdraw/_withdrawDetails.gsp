<div class="hidden2" style="display: block;" ng-controller="withdrawDetailsController">
<div class="alert alert-block alert-error hidden2"></div>
<div class="pull-right span4 hmarg20left vmarg20top">
    <div class="alert alert-info alert-even funding-info">
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">Daily limit</td>
                <td class="dots"></td>
                <td ng-bind-template="{{withdrawLimits.DailyLimitUsed}} / $ {{withdrawLimits.DailyLimit}}"></td>
            </tr>
            <tr>
                <td colspan="3" class="control-hint ralign"></td>
            </tr>
            </tbody></table>
        <table class="stats-dots vmarg0bot">
            <tbody><tr>
                <td class="k">Monthly limit</td>
                <td class="dots"></td>
                <td ng-bind-template="{{withdrawLimits.MonthlyLimitUsed}} / $ {{withdrawLimits.MonthlyLimit}}"></td>
            </tr>
            <tr>
                <td colspan="3" class="control-hint ralign"></td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">Current balance</td>
                <td class="dots"></td>
                <td ng-bind="withdrawLimits.CurrentBalance"></td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">Withheld</td>
                <td class="dots"></td>
                <td ng-bind="withdrawLimits.Withheld"></td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">Withheld (converted)</td>
                <td class="dots"></td>
                <td ng-bind="withdrawLimits.WithheldInUsd"></td>
            </tr>
            </tbody></table>
        <table class="stats-dots vmarg0bot">
            <tbody><tr>
                <td class="k"><strong>Maximum Withdraw</strong></td>
                <td class="dots"></td>
                <td ng-bind="withdrawLimits.MaximumWithdraw"><strong></strong></td>
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
<div class="title-wrap">
    <h5 class="title">Bitcoin Withdrawal</h5>
    <p>To add an address for Bitcoin withdrawals, click "Add address" below and fill in the address you'd like to withdraw to. After you've added the address, simply select it and enter the amount you wish to withdraw. </p> <ul> <li> We strongly recommend that you copy + paste the address to help avoid errors. Please note that we are not responsible for coins mistakenly sent to the wrong address.</li> <li>Don't exceed your daily or monthly funding limits. If you exceed the limits, your account will be frozen until you can get verified for higher limits.</li> </ul></div>
<div class="clearfix"></div>
<div class="slider vpad40top">
<div class="transfer" style="width: 4728px;">
<div class="frame withdraw-wrap" style="width: 788px;">
    <div class="alert alert-block alert-error hidden2">
    </div>
    <form class="form-horizontal medium form-control-left" autocomplete="off" method="post" data-asset="XXBT" novalidate="novalidate">
        <div class="control-group">
            <label class="control-label">Address</label>
            <div class="controls">
                <div class="ib hmarg20right top">
                    <select name="address" class="input-xmlarge select-address" autocomplete="off" data-err-required="An address must be selected."><option value="">Select...</option><option value="t410">t410 • 1AyDaCV9Ev5vjHk3uU8dBfG2oMVxUpf5y3</option></select> </div><div class="ib top">
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
                <input type="text" autocomplete="off" class="ralign amount" style="width: 95%" name="amount" value="" data-minamount="0.00100" data-maxamount="0.21961">
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
    </form></div>

<div class="frame review-wrap" style="width: 788px; visibility: hidden;">
    <h5 class="title center">Confirm withdrawal</h5>
    <div class="review-result hidden2 center">
        <div class="alert alert-block alert-success"><i class="icon-ok"></i> <span class="msg-success"></span></div>
        <a href="/u/funding/withdraw?asset=XXBT" class="btn hmarg40right btn-large reload">« Back</a>
        <a href="/u/funding/withdraw" class="btn btn-large btn-primary">View withdrawals</a>
    </div>
    <form class="form-horizontal form-control-left no-left-margin" method="post" novalidate="novalidate">
        <div class="alert alert-block alert-error hidden2"></div>
        <div class="review-detail well vmarg20">
        </div>
        <div class="btn-toolbar vpad20top center">
            <button type="button" class="btn btn-danger btn-large back hmarg20right" autocomplete="off">« Cancel</button>
            <button type="submit" class="btn btn-success btn-large cancel" autocomplete="off">
                <i class="icon icon-white icon-ok"></i> Confirm withdrawal
            </button>
        </div>
    </form>
</div>
<div class="frame" style="width: 788px; visibility: hidden;">
    <div>
        <div class="vmarg10bot clearfix">
            <h4 class="title pull-left hmarg40right">Bitcoin withdrawal addresses</h4>
            <div class="pull-left vpad5 vmarg10top vmarg0bot alert alert-block alert-error hidden2"></div>
        </div>
        <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline" role="grid"><div class="dataTables_table_wrapper"><table class="table table-hover table-striped dataTable" data-recordcount="_TOTAL_ addresses" data-norecords="No addresses available." id="DataTables_Table_0">
            <thead>
            <tr role="row"><th class="lalign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Description: activate to sort column ascending">Description</th><th class="lalign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Address: activate to sort column ascending">Address</th><th class="center sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label="" style="width: 40px;"></th></tr>
            </thead>

            <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td class=""><a href="javascript: void(0);" class="desc" value="t410">t410</a></td><td class="nw">1AyDaCV9Ev5vjHk3uU8dBfG2oMVxUpf5y3</td><td class="center"><button type="button" name="delete" tabindex="-1" class="btn thin tt btn-danger" data-original-title="" title=""><i class="icon-remove icon-white"></i></button></td></tr></tbody></table></div><div class="vpad5"></div><div class="pull-right"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li class="disabled"><a href="javascript: void(0);">‹</a></li><li class="disabled"><a href="javascript: void(0);">›</a></li></ul></div></div></div>
        <div class="clearfix">
            <div class="btn-toolbar pull-left">
                <button autocomplete="off" type="button" class="btn show-form hmarg20right">« Back</button>
                <button autocomplete="off" type="button" class="btn btn-primary show-address-add hmarg10right"><i class="icon-plus icon-white"></i> Add address</button>
            </div>
        </div>
    </div>
</div>
<div class="frame" style="width: 788px; visibility: hidden;">
    <div>
        <h5 class="title">Add address</h5>
        <p class="vmarg20bot"></p>
        <div class="save-address-result hidden2 center">
            <div class="alert alert-block alert-success">Address saved successfully. </div>
            <a href="javascript: void(0);" class="btn btn-large back">« Back</a>
        </div>
        <form method="post" class="form-horizontal form-control-left" autocomplete="off" data-action="address-add">
            <div class="alert alert-block alert-error hidden2"></div>
            <div class="control-group">
                <label class="control-label">Description</label>
                <div class="controls">
                    <input name="description" type="text" autocomplete="off" class="span4" maxlength="64">
                    <span class="reqmark hpad10left">*</span>
                    <p class="control-hint">Unique description used to identify this address.</p>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Bitcoin address</label>
                <div class="controls">
                    <input type="text" name="info[address]" autocomplete="off" class="span4" value="">
                    <span class="reqmark hpad10left">*</span>
                    <p class="control-hint">Your Bitcoin withdrawal address.</p>
                </div>
            </div>
            <div class="control-group">
                <div class="control-group vpad20top">
                    <div class="controls">
                        <div class="btn-toolbar">
                            <button type="button" class="btn btn-danger btn-large back hmarg20right">« Cancel</button>
                            <button type="submit" class="btn btn-success btn-large save-address" autocomplete="off">
                                <i class="icon icon-white icon-ok"></i> Save address
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <input type="hidden" name="asset" value="XXBT">
            <input type="hidden" name="method" value="Bitcoin">
            <input type="hidden" name="methodtype" value="3">
        </form>
    </div>
</div>
<div class="frame" style="width: 788px; visibility: hidden;">
    <div>
        <h5 class="title">Update address</h5>
        <p class="vmarg20bot"></p>
        <div class="save-address-result hidden2 center">
            <div class="alert alert-block alert-success">Address saved successfully. </div>
            <a href="javascript: void(0);" class="btn btn-large back">« Back</a>
        </div>
        <form method="post" class="form-horizontal form-control-left" autocomplete="off" data-action="address-update">
            <div class="alert alert-block alert-error hidden2"></div>
            <div class="control-group">
                <label class="control-label">Description</label>
                <div class="controls">
                    <input name="newdescription" type="text" autocomplete="off" class="span4" maxlength="64">
                    <span class="reqmark hpad10left">*</span>
                    <p class="control-hint">Unique description used to identify this address.</p>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label">Bitcoin address</label>
                <div class="controls">
                    <input type="text" name="info[address]" autocomplete="off" class="span4" value="">
                    <span class="reqmark hpad10left">*</span>
                    <p class="control-hint">Your Bitcoin withdrawal address.</p>
                </div>
            </div>
            <div class="control-group">
                <div class="control-group vpad20top">
                    <div class="controls">
                        <div class="btn-toolbar">
                            <button type="button" class="btn btn-danger btn-large back hmarg20right">« Cancel</button>
                            <button type="submit" class="btn btn-success btn-large save-address" autocomplete="off">
                                <i class="icon icon-white icon-ok"></i> Save address
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <input type="hidden" name="asset" value="XXBT">
            <input type="hidden" name="method" value="Bitcoin">
            <input type="hidden" name="methodtype" value="3">
            <input type="hidden" name="description" value="">
        </form>
    </div>
</div>
<div class="frame" style="width: 788px; visibility: hidden;">
    <h5 class="title">Delete address</h5>
    <div class="delete-address-result hidden2 center">
        <div class="alert alert-block alert-success">Address deleted successfully. </div>
        <button type="button" class="btn btn-large back">« Back</button>
    </div>
    <form class="form-horizontal form-control-left no-left-margin" method="post">
        <div class="alert alert-block alert-error hidden2"></div>
        <div class="address-delete-detail"></div>
        <div class="control-group">
            <div class="control-group vpad20top">
                <div class="controls">
                    <div class="btn-toolbar">
                        <button type="button" class="btn btn-danger btn-large back hmarg20right">« Cancel</button>
                        <button type="submit" class="btn btn-success btn-large delete-address" autocomplete="off">
                            <i class="icon icon-white icon-ok"></i> Delete address
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
</div>
</div>
</div>