<div class="tab-content">
<div class="tab-pane active">
<div class="row">
<div class="span12">
<div id="api-wrap" class="slider" data-locked="0">
<div style="width: 1900px;" class="transfer">
<div style="width: 950px;" class="frame">
    <div style="display: block;" id="table-api-wrap" class="hidden2">
        <div class="clearfix vmarg10bot">
            <h4 class="title pull-left hmarg40right">API Key Management</h4>
            <div style="display: none;" class="pull-left vpad5 vmarg10top vmarg0bot alert alert-block alert-error hidden2"></div>
        </div>
        <div id="table-api_wrapper" class="dataTables_wrapper form-inline" role="grid"><div class="dataTables_table_wrapper"><table class="table table-hover table-striped dataTable" id="table-api">
            <thead>
            <tr role="row"><th aria-label="Key Description: activate to sort column ascending" colspan="1" rowspan="1" aria-controls="table-api" tabindex="0" role="columnheader" class="lalign sorting">Key Description</th><th aria-label="Key Expiration: activate to sort column ascending" style="width: 175px;" colspan="1" rowspan="1" aria-controls="table-api" tabindex="0" role="columnheader" class="lalign nw sorting">Key Expiration</th><th aria-label="Created: activate to sort column ascending" aria-sort="descending" style="width: 175px;" colspan="1" rowspan="1" aria-controls="table-api" tabindex="0" role="columnheader" class="lalign nw sorting_desc">Created</th><th aria-label="Last Modified: activate to sort column ascending" style="width: 175px;" colspan="1" rowspan="1" aria-controls="table-api" tabindex="0" role="columnheader" class="lalign nw sorting">Last Modified</th><th aria-label="" style="width: 40px;" colspan="1" rowspan="1" role="columnheader" class="ralign sorting_disabled"></th></tr>
            </thead>

            <tbody aria-relevant="all" aria-live="polite" role="alert"><tr class="odd"><td class=""><a value="#3" class="desc" href="javascript: void(0);">#3</a></td><td sort="0" class="nw">——</td><td sort="1400674066" class="nw">05-21-14 14:07:46 +02:00</td><td sort="1401279529" class="nw">05-28-14 14:18:49 +02:00</td><td class="ralign"><button data-original-title="Delete" class="btn thin tt btn-danger" tabindex="-1" title="" name="delete" type="button"><i class="icon-remove icon-white"></i></button></td></tr><tr class="even"><td class=""><a value="#2" class="desc" href="javascript: void(0);">#2</a></td><td sort="1396248211" class="nw">03-31-14 08:43:31 +02:00</td><td sort="1395816198" class="nw">03-26-14 08:43:18 +02:00</td><td sort="1396081423" class="nw">03-29-14 10:23:43 +02:00</td><td class="ralign"><button data-original-title="Delete" class="btn thin tt btn-danger" tabindex="-1" title="" name="delete" type="button"><i class="icon-remove icon-white"></i></button></td></tr><tr class="odd"><td class=""><a value="#1" class="desc" href="javascript: void(0);">#1</a></td><td sort="0" class="nw">——</td><td sort="1395579716" class="nw">03-23-14 15:01:56 +02:00</td><td sort="1395579716" class="nw">03-23-14 15:01:56 +02:00</td><td class="ralign"><button data-original-title="Delete" class="btn thin tt btn-danger" tabindex="-1" title="" name="delete" type="button"><i class="icon-remove icon-white"></i></button></td></tr></tbody></table></div><div class="vpad5"></div><div class="pull-right"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li class="disabled"><a href="javascript: void(0);">‹</a></li><li class="disabled"><a href="javascript: void(0);">›</a></li></ul></div></div></div>
        <div class="btn-toolbar pull-left">
            <button autocomplete="off" type="button" class="btn btn-primary show-generate hmarg10right"><i class="icon-plus icon-white"></i> Generate New Key</button>
            <span style="display: none;" class="key-limit-warning ib text hidden2">Maximum limit of 16 keys reached.</span>
        </div>
    </div>
</div>
<div style="width: 950px; visibility: hidden;" class="frame">
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
                        <input autocomplete="off" class="input-xlarge" name="description" value="" maxlength="32" type="text">
                        <input autocomplete="off" name="keydescription" value="" type="hidden">
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
                                            <input name="permissions[funds-query]" value="1" autocomplete="off" type="checkbox">
                                            <span>Query Funds</span>
                                        </label>
                                    </div>
                                    <div class="checkboxes">
                                        <label>
                                            <input name="permissions[funds-add]" value="1" autocomplete="off" type="checkbox">
                                            <span>Deposit Funds</span>
                                        </label>
                                    </div>
                                    <div class="checkboxes">
                                        <label>
                                            <input name="permissions[funds-withdraw]" value="1" autocomplete="off" type="checkbox">
                                            <span>Withdraw Funds</span>
                                        </label>
                                    </div>
                                </div>
                                <div class="span3">
                                    <h5 class="title">Orders &amp; Trades</h5>
                                    <div class="checkboxes">
                                        <label>
                                            <input name="permissions[trades-query-open]" value="1" autocomplete="off" type="checkbox">
                                            <span>Query Open Orders &amp; Trades</span>
                                        </label>
                                    </div>
                                    <div class="checkboxes">
                                        <label>
                                            <input name="permissions[trades-query-closed]" value="1" autocomplete="off" type="checkbox">
                                            <span>Query Closed Orders &amp; Trades</span>
                                        </label>
                                    </div>
                                    <div class="checkboxes">
                                        <label>
                                            <input name="permissions[trades-modify]" value="1" autocomplete="off" type="checkbox">
                                            <span>Modify Orders</span>
                                        </label>
                                    </div>
                                    <div class="checkboxes">
                                        <label>
                                            <input name="permissions[trades-close]" value="1" autocomplete="off" type="checkbox">
                                            <span>Cancel/Close Orders</span>
                                        </label>
                                    </div>
                                </div>
                                <div class="span3">
                                    <h5 class="title">Ledger</h5>
                                    <div class="checkboxes">
                                        <label>
                                            <input name="permissions[ledger-query]" value="1" autocomplete="off" type="checkbox">
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
                            <div class="ib btn-group datetime-toggle vpad5 hmarg20right" data-toggle="buttons-radio" name="toggle-validuntil">
                                <button type="button" value="0" class="btn active" autocomplete="off">Off</button><button type="button" value="1" class="btn " autocomplete="off">On</button>
                            </div>
                            <div class="ib datetime hidden2" name="datetime-validuntil">
                                <div class="ib input-append datepicker date hmarg5right" data-date-format="mm-dd-yy">
                                    <input name="" autocomplete="off" readonly="readonly" class="input-smaller hmarg0right" default="09-05-14" value="09-05-14" type="text"><span class="add-on"><i class="icon-calendar"></i></span>
                                </div>
                                <div class="ib input-append bootstrap-timepicker-component">
                                    <input name="" autocomplete="off" readonly="readonly" class="timepicker input-smaller hmarg0right" value="" type="text"><span class="add-on"><i class="icon-time"></i> </span>
                                </div>
                            </div>
                            <p class="control-hint">Enable to select when this key should no longer be usable.</p>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Query Start Date/Time</label>
                        <div class="controls queryfrom-wrap">
                            <div class="ib btn-group datetime-toggle vpad5 hmarg20right" data-toggle="buttons-radio" name="toggle-queryfrom">
                                <button type="button" value="0" class="btn active" autocomplete="off">Off</button><button type="button" value="1" class="btn " autocomplete="off">On</button>
                            </div>
                            <div class="ib datetime hidden2" name="datetime-queryfrom">
                                <div class="ib input-append datepicker date hmarg5right" data-date-format="mm-dd-yy">
                                    <input name="" autocomplete="off" readonly="readonly" class="input-smaller hmarg0right" default="09-05-14" value="09-05-14" type="text"><span class="add-on"><i class="icon-calendar"></i></span>
                                </div>
                                <div class="ib input-append bootstrap-timepicker-component">
                                    <input name="" autocomplete="off" readonly="readonly" class="timepicker input-smaller hmarg0right" value="" type="text"><span class="add-on"><i class="icon-time"></i> </span>
                                </div>
                            </div>
                            <p class="control-hint">Enable to select the earliest date/time of data allowed to be queried.</p>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Query End Date/Time</label>
                        <div class="controls end-wrap">
                            <div class="ib btn-group datetime-toggle vpad5 hmarg20right" data-toggle="buttons-radio" name="toggle-queryto">
                                <button type="button" value="0" class="btn active" autocomplete="off">Off</button><button type="button" value="1" class="btn " autocomplete="off">On</button>
                            </div>
                            <div class="ib datetime hidden2" name="datetime-queryto">
                                <div class="ib input-append datepicker date hmarg5right" data-date-format="mm-dd-yy">
                                    <input name="" autocomplete="off" readonly="readonly" class="input-smaller hmarg0right" default="09-05-14" value="09-05-14" type="text"><span class="add-on"><i class="icon-calendar"></i></span>
                                </div>
                                <div class="ib input-append bootstrap-timepicker-component">
                                    <input name="" autocomplete="off" readonly="readonly" class="timepicker input-smaller hmarg0right" value="" type="text"><span class="add-on"><i class="icon-time"></i> </span>
                                </div>
                            </div>
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
                            <button autocomplete="off" type="button" class="btn-key-save btn submit btn-success btn-large"><i class="icon-ok icon-white"></i> Generate Key</button>
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
</div>
</div>
</div>
</div>
</div>