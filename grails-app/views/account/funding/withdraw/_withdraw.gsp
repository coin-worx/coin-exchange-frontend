<div class="span2">
  <ul class="nav nav-list nav-sidebar auto-width vmarg0top hpad10right" id="withdraw-nav">
    <li class="">
      <a href="/u/funding/withdraw?asset=XXBT">Bitcoin (XBT)</a>
    </li>
    <li class="">
      <a href="/u/funding/withdraw?asset=XXRP">Ripple (XRP)</a>
    </li>
    <li class="">
      <a href="/u/funding/withdraw?asset=XLTC">Litecoin (LTC)</a>
    </li>
    <li class="">
      <a href="/u/funding/withdraw?asset=XNMC">Namecoin (NMC)</a>
    </li>
    <li class="">
      <a href="/u/funding/withdraw?asset=XXVN">Ven (XVN)</a>
    </li>
    <li class="bottom">
      <a href="/u/funding/withdraw?asset=XXDG">Dogecoin (XDG)</a>
    </li>
  </ul>
</div>

<div id="withdraw-content" class="span10" data-locked="0">
  <div class="hidden2" style="display: block;">
    <p>Select an asset to withdraw from the menu and follow the instructions on the displayed form. Please see the <a
        href="/help/faq#withdraws-and-withdrawals">FAQ</a> for questions or <a
        href="https://support.kraken.com">contact support</a> for any issues.</p>

    <div class="slider vmarg40top" id="slider-withdrawals">
      <div class="transfer" style="width: 2364px;">
        <div class="frame" style="width: 788px;">
          <div class="clearfix vmarg10bot">
            <h5 class="pull-left title vpad10top hmarg40right">Recent withdrawals</h5>

            <div class="pull-left vpad5 vmarg5 alert alert-block alert-error doc-error hidden2"
                 style="display: none;"></div>
          </div>

          <div id="table-withdrawals_wrapper" class="dataTables_wrapper form-inline" role="grid"><div
              class="dataTables_table_wrapper"><table id="table-withdrawals"
                                                      class="table table-hover table-striped dataTable table-withdrawal"
                                                      aria-describedby="table-withdrawals_info">
              <thead>
              <tr role="row"><th class="lalign nw sorting" role="columnheader" tabindex="0"
                                 aria-controls="table-withdrawals" rowspan="1" colspan="1"
                                 aria-label="ID: activate to sort column ascending">ID</th>
                <th class="lalign sorting_desc" role="columnheader" tabindex="0" aria-controls="table-withdrawals"
                    rowspan="1" colspan="1" aria-sort="descending"
                    aria-label="Date: activate to sort column ascending">Date</th>

                <th class="lalign sorting"
                    role="columnheader" tabindex="0"
                    aria-controls="table-withdrawals"
                    rowspan="1" colspan="1"
                    aria-label="Type: activate to sort column ascending">Type</th>
                <th class="ralign sorting" role="columnheader" tabindex="0" aria-controls="table-withdrawals"
                    rowspan="1" colspan="1" aria-label="Amount: activate to sort column ascending">Amount</th>
                <th class="ralign sorting" role="columnheader" tabindex="0" aria-controls="table-withdrawals"
                    rowspan="1" colspan="1" aria-label="Fee: activate to sort column ascending">Fee</th><th
                  class="ralign lalign sorting" role="columnheader" tabindex="0" aria-controls="table-withdrawals"
                  rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending">Status</th>
                <th class="sorting_disabled center" role="columnheader" rowspan="1" colspan="1" aria-label=""
                    style="width: 40px;"></th></tr>
              </thead>

              <tbody role="alert" aria-live="polite" aria-relevant="all">
              <tr class="odd">
                <td class="nw">
                  <a href="javascript: void(0);" class="txid tt" title="" data-container="body"
                     value="AGBHMT3-CSOASX-47ODLZ" data-original-title="AGBHMT3-CSOASX-47ODLZ">AGBHMT3
                  </a>
                </td>
                <td class="">03-19-14 12:26:15 +0100</td><td class="">Bitcoin</td><td class="ralign">฿0.00050</td><td
                  class="ralign"><div class="textAlignDecimal"><span>฿0</span><span>.</span><span>00050</span></div>
              </td><td class="lalign"><div class="textAlignDecimal"><span><span
                  class="label label-success">Success</span></span><span></span><span></span></div></td><td
                  class="center"></td></tr></tbody></table></div>

            <div><div class="pull-left"><div class="dataTables_info"
                                             id="table-withdrawals_info">1 - 1 of 1 withdrawals</div></div>

              <div class="pull-right"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li
                  class="disabled"><a href="javascript: void(0);">‹</a></li><li class="disabled"><a
                  href="javascript: void(0);">›</a></li></ul></div></div>

              <div class="clearfix"></div></div></div>
        </div>

        <div class="frame" style="width: 788px; visibility: hidden;">
          <h4 class="title center">Confirm Withdrawal Cancellation</h4>

          <div class="hidden2 center withdraw-cancel-result">
            <div class="alert alert-block alert-success">Withdrawal cancellation was initiated successfully.</div>
            <button type="button" class="btn btn-large back">« Back</button>
          </div>

          <form class="form-horizontal form-control-left withdraw-cancel-form" method="post" autocomplete="off">
            <div class="withdraw-cancel-detail well review-detail small vmarg20top"></div>

            <div class="center vpad20top">
              <div class="btn-toolbar">
                <button type="button" class="btn btn-danger btn-large back hmarg20right"
                        autocomplete="off">« Back</button>
                <button type="submit" class="btn btn-success btn-large delete-address" autocomplete="off">
                  <i class="icon icon-white icon-ok"></i> Cancel withdrawal</button>
              </div>
            </div>
            <input type="hidden" name="ref" value="">
            <input type="hidden" name="asset" value="">
          </form>
        </div>

        <div class="frame" style="width: 788px; visibility: hidden;">
          <div class="clearfix vmarg20bot">
            <h5 class="title vpad10top pull-left"></h5>

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
</div>