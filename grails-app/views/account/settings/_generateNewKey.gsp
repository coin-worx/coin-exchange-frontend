<div class="account-wrap" ng-controller="settingsApiController">
<div class="tab-content-wrap" id="settings-content">
<div class="tab-content">
<div class="tab-pane active">
<div class="row">
<div class="span12">
<div id="api-wrap" class="slider" data-locked="0">
<div style="width: 1900px; margin-left: -950px;" class="transfer" ng-hide="newSecurityKeySuccess">
<div style="width: 950px; visibility: hidden;" class="frame">
    <div style="display: block;" id="table-api-wrap" class="hidden2">
        <div class="clearfix vmarg10bot">
            <h4 class="title pull-left hmarg40right">API Key Management</h4>
            <div style="display: none;" class="pull-left vpad5 vmarg10top vmarg0bot alert alert-block alert-error hidden2"></div>
        </div>
        <div id="table-api_wrapper" class="dataTables_wrapper form-inline" role="grid">
            <div class="dataTables_table_wrapper"><table class="table table-hover table-striped dataTable" id="table-api">
            <thead>
            <tr role="row"><th aria-label="Key Description: activate to sort column ascending" colspan="1" rowspan="1" aria-controls="table-api" tabindex="0" role="columnheader" class="lalign sorting">Key Description</th>
                <th aria-label="Key Expiration: activate to sort column ascending" style="width: 175px;" colspan="1"
                    rowspan="1" aria-controls="table-api" tabindex="0" role="columnheader" class="lalign nw sorting">
                    Key Expiration
                </th>
                <th aria-label="Created: activate to sort column ascending" aria-sort="descending" style="width: 175px;"
                    colspan="1" rowspan="1" aria-controls="table-api" tabindex="0" role="columnheader"
                    class="lalign nw sorting_desc">Created</th>
                <th aria-label="Last Modified: activate to sort column ascending" style="width: 175px;" colspan="1"
                    rowspan="1" aria-controls="table-api" tabindex="0" role="columnheader" class="lalign nw sorting">
                    Last Modified</th><th aria-label="" style="width: 40px;" colspan="1" rowspan="1" role="columnheader" class="ralign sorting_disabled"></th></tr>
            </thead>

            <tbody aria-relevant="all" aria-live="polite" role="alert"><tr class="odd"><td class=""><a value="#3" class="desc" href="javascript: void(0);">#3</a></td><td sort="0" class="nw">——</td><td sort="1400674066" class="nw">05-21-14 14:07:46 +02:00</td><td sort="1401279529" class="nw">05-28-14 14:18:49 +02:00</td><td class="ralign"><button data-original-title="Delete" class="btn thin tt btn-danger" tabindex="-1" title="" name="delete" type="button"><i class="icon-remove icon-white"></i></button></td></tr><tr class="even"><td class=""><a value="#2" class="desc" href="javascript: void(0);">#2</a></td><td sort="1396248211" class="nw">03-31-14 08:43:31 +02:00</td><td sort="1395816198" class="nw">03-26-14 08:43:18 +02:00</td><td sort="1396081423" class="nw">03-29-14 10:23:43 +02:00</td><td class="ralign"><button data-original-title="Delete" class="btn thin tt btn-danger" tabindex="-1" title="" name="delete" type="button"><i class="icon-remove icon-white"></i></button></td></tr><tr class="odd"><td class=""><a value="#1" class="desc" href="javascript: void(0);">#1</a></td><td sort="0" class="nw">——</td><td sort="1395579716" class="nw">03-23-14 15:01:56 +02:00</td><td sort="1395579716" class="nw">03-23-14 15:01:56 +02:00</td><td class="ralign"><button data-original-title="Delete" class="btn thin tt btn-danger" tabindex="-1" title="" name="delete" type="button"><i class="icon-remove icon-white"></i></button></td></tr></tbody></table></div><div class="vpad5"></div><div class="pull-right"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li class="disabled"><a href="javascript: void(0);">‹</a></li><li class="disabled"><a href="javascript: void(0);">›</a></li></ul></div></div></div>
        <div class="btn-toolbar pull-left">
            <button disabled="disabled" autocomplete="off" type="button" class="btn btn-primary show-generate hmarg10right"><i class="icon-plus icon-white"></i> Generate New Key</button>
            <span style="display: none;" class="key-limit-warning ib text hidden2">Maximum limit of 16 keys reached.</span>
        </div>
    </div>
</div>
<div style="width: 950px; visibility: visible;" class="frame frame-active" >
<div class="keydetail-wrap">
<h4 class="title vpad10bot">Generate New Key</h4>
<div class="vpad10 alert alert-block alert-error hidden2 error-grouped"></div>
<form class="form-horizontal form-control-left no-left-margin" method="post">
    <fieldset>
        <div class="row">
            <div class="span12">
                <div class="apikey-wrap hidden2">
                    <div class="control-group">
                        <label class="control-label">API Key</label>
                        <div class="controls">
                            <pre class="vmarg0 clickcopy" name="apikey"></pre>
                            <p class="control-hint">Key required to make queries to the API.</p>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Secret</label>
                        <div class="controls">
                            <pre class="vmarg0 clickcopy" name="secret"></pre>
                            <p class="control-hint">Private key used to sign API messages.</p>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">QR Code</label>
                        <div class="controls">
                            <div class="qr-placeholder"></div>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Key Description</label>
                    <div class="controls">
                        <span class="readonly bold" name="description-readonly"></span>
                        <input autocomplete="off" class="input-xlarge" name="description" value="" maxlength="32" type="text" ng-model="keyDescription">
                        <p class="control-hint">Short description used to identify this key.</p>
                    </div>
                </div>
                <div class="property-wrap">
                    <div class="control-group">
                        <label class="control-label">Key Permissions</label>
                        <div class="controls">
                            <p class="vpad5top vpad10bot">Select the allowable actions that can be performed with this key.</p>
                            <div class="row">
                                <div class="span3">
                                    <h5 class="title">Funds</h5>
                                    <div class="checkboxes">
                                        <label>
                                            <input name="permissions[funds-query]" value="1" autocomplete="off" type="checkbox" ng-model="QF">
                                            <span>Query Funds</span>
                                        </label>
                                    </div>
                                    <div class="checkboxes">
                                        <label>
                                            <input name="permissions[funds-add]" value="1" autocomplete="off" type="checkbox" ng-model="DF">
                                            <span>Deposit Funds</span>
                                        </label>
                                    </div>
                                    <div class="checkboxes">
                                        <label>
                                            <input name="permissions[funds-withdraw]" value="1" autocomplete="off" type="checkbox" ng-model="WF">
                                            <span>Withdraw Funds</span>
                                        </label>
                                    </div>
                                </div>
                                <div class="span3">
                                    <h5 class="title">Orders &amp; Trades</h5>
                                    <div class="checkboxes">
                                        <label>
                                            <input name="permissions[trades-query-open]" value="1" autocomplete="off" type="checkbox" ng-model="QOOT">
                                            <span>Query Open Orders &amp; Trades</span>
                                        </label>
                                    </div>
                                    <div class="checkboxes">
                                        <label>
                                            <input name="permissions[trades-query-closed]" value="1" autocomplete="off" type="checkbox" ng-model="QCOT">
                                            <span>Query Closed Orders &amp; Trades</span>
                                        </label>
                                    </div>
                                    <div class="checkboxes">
                                        <label>
                                            <input name="permissions[trades-close]" value="1" autocomplete="off" type="checkbox" ng-model="CO">
                                            <span>Cancel/Close Orders</span>
                                        </label>
                                    </div>
                                </div>
                                <div class="span3">
                                    <h5 class="title">Ledger</h5>
                                    <div class="checkboxes">
                                        <label>
                                            <input name="permissions[ledger-query]" value="1" autocomplete="off" type="checkbox" ng-model="QLT">
                                            <span>Query Ledger Entries</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="control-group vpad20top">
                        <label class="control-label">Key Expiration</label>
                        <div class="controls validuntil-wrap">
                            <div class="btn-group">
                                <label class="btn btn-primary" ng-model="expirationModel" btn-radio="'expirationOff'">Off</label>
on                                <label class="btn btn-primary" ng-model="expirationModel" btn-radio="'expirationOn'">On</label>
                            </div>
                            <p class="input-group" ng-show="expirationModel === 'expirationOn'">
                                <input type="text" class="form-control" datepicker-popup="{{expirationFormat}}"
                                       ng-model="expirationDate" is-open="expirationOpened" %{--min-date="minDate" max-date="'2015-06-22'"--}%
                                       datepicker-options="dateOptions" date-disabled="disabled(date, mode)"
                                       ng-required="true" close-text="Close" />

                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default" ng-click="openExpiration($event)">
                                        <i class="icon-calendar"></i></button>
                                </span>
                                <timepicker ng-model="expirationTime" hour-step="expirationHourStep" minute-step="expirationMinuteStep"
                                            show-meridian="expirationIsMeridian"></timepicker>
                            </p>
                            <p class="control-hint">Enable to select when this key should no longer be usable.</p>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Query Start Date/Time</label>
                        <div class="controls queryfrom-wrap">
                            <div class="btn-group">
                                <label class="btn btn-primary" ng-model="queryStartModel" btn-radio="'queryStartOff'">Off</label>
                                <label class="btn btn-primary" ng-model="queryStartModel" btn-radio="'queryStartOn'">On</label>
                            </div>
                            <p class="input-group" ng-show="queryStartModel === 'queryStartOn'">
                                <input type="text" class="form-control" datepicker-popup="{{queryStartFormat}}"
                                       ng-model="queryStartDate" is-open="queryStartOpened" %{--min-date="minDate" max-date="'2015-06-22'"--}%
                                       datepicker-options="dateOptions" date-disabled="disabled(date, mode)"
                                       ng-required="true" close-text="Close" />

                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default" ng-click="openQueryStart($event)">
                                        <i class="icon-calendar"></i></button>
                                </span>
                                <timepicker ng-model="queryStartTime" hour-step="queryStartHourStep" minute-step="queryStartMinuteStep"
                                            show-meridian="queryStartIsMeridian"></timepicker>
                            </p>
                            <p class="control-hint">Enable to select the earliest date/time of data allowed to be queried.</p>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Query End Date/Time</label>
                        <div class="controls end-wrap">
                            <div class="btn-group">
                                <label class="btn btn-primary" ng-model="queryEndModel" btn-radio="'queryEndOff'">Off</label>
                                <label class="btn btn-primary" ng-model="queryEndModel" btn-radio="'queryEndOn'">On</label>
                            </div>
                            <p class="input-group" ng-show="queryEndModel === 'queryEndOn'">
                                <input type="text" class="form-control" datepicker-popup="{{queryEndFormat}}"
                                       ng-model="queryEndDate" is-open="queryEndOpened" min-date="minDate" max-date="'2015-06-22'"
                                       datepicker-options="dateOptions" date-disabled="disabled(date, mode)"
                                       ng-required="true" close-text="Close" />

                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-default" ng-click="openQueryEnd($event)">
                                        <i class="icon-calendar"></i></button>
                                </span>
                                <timepicker ng-model="queryEndTime" hour-step="queryEndHourStep" minute-step="queryEndMinuteStep"
                                            show-meridian="queryEndIsMeridian"></timepicker>
                            </p>
                            <p class="control-hint">Enable to select the latest date/time of data allowed to be queried.</p>
                        </div>
                    </div>
                </div>
                <div class="control-group vpad20top">
                    <label class="control-label">&nbsp;</label>
                    <div class="controls">
                        <p class="confirm-msg vpad20bot hidden2"></p>
                        <div class="btn-toolbar">
                            <button autocomplete="off" type="button" class="btn-key-cancel btn btn-danger btn-large hmarg20right"><i class="icon-remove icon-white"></i> Cancel</button>
                            <button autocomplete="off" type="button" class="btn-key-save btn submit btn-success btn-large"
                            ng-click="createNewKey()">Generate Key</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </fieldset>
</form>
<div class="result-wrap hidden2">
    <div class="vpad10 center alert alert-block alert-success">
    </div>
    <div class="result-info vpad20 form-horizontal form-control-left no-left-margin">
        <div class="control-group">
            <label class="control-label">API Key</label>
            <div class="controls">
                <pre class="vmarg0 clickcopy" name="apikey"></pre>
                <p class="control-hint">Key required to make queries to the API.</p>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Secret</label>
            <div class="controls">
                <pre class="vmarg0 clickcopy" name="secret"></pre>
                <p class="control-hint">Private key used to sign API messages.</p>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">QR Code</label>
            <div class="controls">
                <div class="qr-placeholder"></div>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Key Description</label>
            <div class="controls">
                <span class="readonly bold" name="description-readonly"></span>
                <p class="control-hint">Short description used to identify this key.</p>
            </div>
        </div>
    </div>
    <div class="center vpad10 btn-toolbar">
        <button autocomplete="off" type="button" class="btn btn-large back2list">« Back to key list</button>
    </div>
</div>
</div>
</div>
</div>

<div ng-show="newSecurityKeySuccess">
    <g:render template="/account/settings/generateNewKeySuccess" />
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="otp-popover" class="hidden2">
    <form method="post" autocomplete="off" class="center">
        <input name="otp" class="input-large" autocomplete="off" type="password">
        <p class="control-hint vmarg10bot">Enter the one-time password required by two-factor authentication.</p>
        <button type="submit" class="btn btn-success btn-small center"></button>
    </form>
</div>
</div>