<div class="slider" id="wrap-tfa" data-locked="0">
  <div class="transfer" style="width: 2850px;">
    <div class="frame" style="width: 950px;">
      <div class="vpad10 alert alert-block alert-error hidden2" style="display: none;"></div>

      <div class="wrap-tfa-list hidden2" style="display: block;">
        <div class="function-list"><h4 class="title">Two-factor Authentication Methods</h4>

          <p>Add two-factor authentication for increased account security.</p>

          <div class="form-horizontal large form-control-left vpad30top"><div class="control-group"><label
              class="control-label">Account login and funding</label>

            <div class="controls"><span class="readonly" name="account:main">No method • <a href="javascript: void(0);"
                                                                                            class="setup"
                                                                                            forid="account:main"><small>Setup</small>
            </a></span>

              <p class="control-hint">Add a two-factor authentication method for account login, deposits, and withdrawals.</p>
            </div></div>

            <div class="control-group"><label class="control-label">Trading</label>

              <div class="controls"><span class="readonly" name="account:trade">No method • <a
                  href="javascript: void(0);" class="setup" forid="account:trade"><small>Setup</small></a></span>

                <p class="control-hint">Add a two-factor authentication method for placing, closing, and canceling orders.</p>
              </div></div>

            <div class="control-group"><label class="control-label">Master key</label>

              <div class="controls"><span class="readonly" name="account:secret">No method • <a
                  href="javascript: void(0);" class="setup" forid="account:secret"><small>Setup</small></a></span>

                <p class="control-hint">Setup a master key to enable password recovery and two-factor authentication bypass.</p>
              </div></div></div></div>

        <div class="clearfix vmarg10bot">
          <h5 class="title">API keys</h5>

          <p>Add a two-factor authentication method for actions that can be performed using API keys.</p>

          <div id="table-api_wrapper" class="dataTables_wrapper form-inline" role="grid"><div
              class="dataTables_table_wrapper"><table class="table table-hover table-striped dataTable" id="table-api"
                                                      style="width: 950px;">
              <thead>
              <tr role="row"><th class="lalign sorting_asc" role="columnheader" tabindex="0" aria-controls="table-api"
                                 rowspan="1" colspan="1" aria-sort="ascending"
                                 aria-label="Key Description: activate to sort column descending"
                                 style="width: 399px;">Key Description</th><th class="lalign sorting"
                                                                               role="columnheader" tabindex="0"
                                                                               aria-controls="table-api" rowspan="1"
                                                                               colspan="1"
                                                                               aria-label="Method: activate to sort column ascending"
                                                                               style="width: 477px;">Method</th><th
                  class="ralign sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label=""
                  style="width: 40px;"></th></tr>
              </thead>

              <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td class="">#1</td><td
                  class="">No method</td><td class="ralign"><button type="button" title="" forid="api:#1" tabindex="-1"
                                                                    class="btn thin setup tt"
                                                                    data-original-title="Setup"><i
                    class="icon-wrench"></i></button></td></tr><tr class="even"><td class="">#2</td><td
                  class="">No method</td><td class="ralign"><button type="button" title="" forid="api:#2" tabindex="-1"
                                                                    class="btn thin setup tt"
                                                                    data-original-title="Setup"><i
                    class="icon-wrench"></i></button></td></tr></tbody></table></div>

            <div class="vpad5"></div>

            <div class="pull-right"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li
                class="disabled"><a href="javascript: void(0);">‹</a></li><li class="disabled"><a
                href="javascript: void(0);">›</a></li></ul></div></div></div>
        </div>
      </div>
    </div>

    <div class="frame" style="width: 950px; visibility: hidden;">
      <div class="wrap-tfa-detail hidden2">
        <h4 class="title">Two-factor Authentication Setup</h4>

        <p class="vpad20bot">Choose a two-factor authentication method to apply.</p>

        <div class="vpad10 alert alert-block alert-error hidden2"></div>

        <form id="form-tfa" class="jq-validate-form form-horizontal large form-control-left vpad10top" method="post"
              autocomplete="off">
          <div class="control-group wrap-for">
            <label class="control-label">Functionality</label>

            <div class="controls">
              <span name="for" forid="" class="readonly"></span>

              <p class="control-hint" name="forhint">
              </p></div>
          </div>

          <div class="control-group hidden2">
            <label class="control-label">API Key</label>

            <div class="controls">
              <select name="apikey" class="span5" autocomplete="off" disabled="disabled"><option
                  value="">Select...</option></select>

              <div class="spinner ib hmarg10left">
                <img src="/img/spinner-grey.gif" class="hidden2">
              </div>

              <p class="control-hint">&nbsp;</p>
            </div>
          </div>

          <div id="wrap-tfa-type"></div>
        </form>
      </div>
    </div>

    <div class="frame" style="width: 950px; visibility: hidden;">
      <div class="row tfa-review">
        <div class="span12">
          <div class="center">
            <h4 class="centered title">Confirm Two-factor Authentication Settings</h4>

            <div class="vpad10 alert alert-block alert-error hidden2"></div>

            <div class="well small well-data-list big tfa-review-list"></div>

            <div class="tfa-review-complete hidden2 vmarg20top">
              <div class="vpad10 alert alert-block alert-success">
                Two-factor authentication updated successfully!</div>

              <div class="center btn-toolbar">
                <button autocomplete="off" type="button"
                        class="btn-success-back btn btn-primary btn-large">« Setup another two-factor authentication method</button>
              </div>
            </div>
          </div>

          <form id="form-tfa-review" class="form-horizontal large form-control-left vpad10top" method="post"
                autocomplete="off">
            <div class="row">
              <div class="span8 offset3">
                <div class="importdata-wrap">
                </div>

                <div class="control-group">
                  <label class="control-label ralign">One-time Password</label>

                  <div class="controls">
                    <input type="password" name="otp" class="input-large" autocomplete="off" value="">

                    <p class="control-hint"></p>
                  </div>
                </div>
              </div>
            </div>

            <div class="center btn-toolbar">
              <button autocomplete="off" type="button"
                      class="btn btn-danger btn-large btn-confirm-cancel hmarg30right">« Cancel</button>
              <button autocomplete="off" type="submit" class="btn btn-success btn-large btn-confirm"><i
                  class="icon-ok icon-white"></i> Confirm</button>

              <p class="ga-warning control-hint vpad20top hidden2">* If Google Authenticator fails to setup, ensure the default OTP Algorithm and OTP Length settings are selected.</p>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>