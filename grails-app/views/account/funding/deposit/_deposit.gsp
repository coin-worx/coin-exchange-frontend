<div class="span2">
  <ul class="nav nav-list nav-sidebar auto-width vmarg0top hpad10right" id="withdraw-nav">
    <li class="">
      <a href="/u/funding/deposit?asset=XXBT">Bitcoin (XBT)</a>
    </li>
    <li class="">
      <a href="/u/funding/deposit?asset=XXRP">Ripple (XRP)</a>
    </li>
    <li class="">
      <a href="/u/funding/deposit?asset=XLTC">Litecoin (LTC)</a>
    </li>
    <li class="">
      <a href="/u/funding/deposit?asset=XNMC">Namecoin (NMC)</a>
    </li>
    <li class="">
      <a href="/u/funding/deposit?asset=XXVN">Ven (XVN)</a>
    </li>
    <li class="bottom">
      <a href="/u/funding/deposit?asset=XXDG">Dogecoin (XDG)</a>
    </li>
  </ul>
</div>

<div id="deposit-content" class="span10" data-locked="0">
  <p>Select an asset to deposit from the menu and follow the instructions on the displayed form. Please see the <a
      href="/help/faq#deposits-and-withdrawals">FAQ</a> for questions or <a
      href="https://support.kraken.com">contact support</a> for any issues.</p>

  <div class="vmarg40top slider" id="slider-deposit-list">
    <div class="transfer" style="width: 1576px;">
      <div class="frame" style="width: 788px;">
        <div class="hidden2" style="display: block;">
          <div class="vmarg10 alert alert-block alert-error doc-error hidden2"></div>

          <div class="clearfix vmarg20top vmarg10bot">
            <h5 class="pull-left table-title title">Recent Bitcoin deposits</h5>

            <div class="pull-right">
              <div class="input-prepend">
                <span class="add-on">Asset</span>
                <select name="select-asset" autocomplete="off" class="select-asset input-medium"><option
                    selected="selected" value="XXBT">Bitcoin</option><option value="XXRP">Ripple</option><option
                    value="XLTC">Litecoin</option><option value="XNMC">Namecoin</option><option
                    value="XXVN">Ven</option><option value="XXDG">Dogecoin</option></select></div>

              <div class="input-prepend hidden2 hmarg20left">
                <span class="add-on">Method</span>
                <select name="select-method" autocomplete="off"
                        class="select-method input-medium"><option>Bitcoin</option></select></div>
            </div>
          </div>

          <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline" role="grid"><div
              class="dataTables_table_wrapper"><table class="table table-hover table-striped dataTable table-deposit"
                                                      id="DataTables_Table_0"
                                                      aria-describedby="DataTables_Table_0_info">
              <thead>
              <tr role="row"><th class="lalign sorting_disabled nw" role="columnheader" rowspan="1"
                                 colspan="1">ID</th><th class="lalign sorting_disabled" role="columnheader" rowspan="1"
                                                        colspan="1">Date</th><th class="lalign sorting_disabled"
                                                                                 role="columnheader" rowspan="1"
                                                                                 colspan="1">Description</th><th
                  class="ralign sorting_disabled nw" role="columnheader" rowspan="1" colspan="1">Amount</th><th
                  class="lalign sorting_disabled" role="columnheader" rowspan="1" colspan="1">Status</th></tr>
              </thead>

              <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td valign="top" colspan="5"
                                                                                             class="dataTables_empty">No deposits available.</td>
              </tr></tbody></table></div>

            <div><div class="pull-left"><div class="dataTables_info" id="DataTables_Table_0_info"></div></div>

              <div class="pull-right"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li
                  class="disabled"><a href="javascript: void(0);">‹</a></li><li class="disabled"><a
                  href="javascript: void(0);">›</a></li></ul></div></div>

              <div class="clearfix"></div></div></div>
        </div>
      </div>

      <div class="frame" style="width: 788px; visibility: hidden;">
        <div class="clearfix vmarg20">
          <h5 class="title pull-left"></h5>

          <div class="pull-right">
            <button class="btn btn-small back">« Back</button>
          </div>
        </div>

        <div class="stats-dots-wrap detail-column">
        </div>
      </div>
    </div>
  </div>
</div>

<div id="otp-popover" class="hidden2">
  <form method="post" autocomplete="off" class="center">
    <input type="password" name="otp" class="input-large" autocomplete="off">

    <p class="control-hint vmarg10bot">Enter the one-time password required by two-factor authentication.</p>
    <button type="submit" class="btn btn-success btn-small center"></button>
  </form>
</div>