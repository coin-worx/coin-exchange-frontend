<!--
***************************************************************************** 
* Copyright 2016 Aurora Solutions 
* 
*    http://www.aurorasolutions.io 
* 
* Aurora Solutions is an innovative services and product company at 
* the forefront of the software industry, with processes and practices 
* involving Domain Driven Design(DDD), Agile methodologies to build 
* scalable, secure, reliable and high performance products.
* 
* Coin Exchange is a high performance exchange system specialized for
* Crypto currency trading. It has different general purpose uses such as
* independent deposit and withdrawal channels for Bitcoin and Litecoin,
* but can also act as a standalone exchange that can be used with
* different asset classes.
* Coin Exchange uses state of the art technologies such as ASP.NET REST API,
* AngularJS and NUnit. It also uses design patterns for complex event
* processing and handling of thousands of transactions per second, such as
* Domain Driven Designing, Disruptor Pattern and CQRS With Event Sourcing.
* 
* Licensed under the Apache License, Version 2.0 (the "License"); 
* you may not use this file except in compliance with the License. 
* You may obtain a copy of the License at 
* 
*    http://www.apache.org/licenses/LICENSE-2.0 
* 
* Unless required by applicable law or agreed to in writing, software 
* distributed under the License is distributed on an "AS IS" BASIS, 
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
* See the License for the specific language governing permissions and 
* limitations under the License. 
*****************************************************************************
-->


<div id="overview-wrap">
  <div class="vpad10 alert alert-block alert-error hidden2" style="display: none;"></div>

  <div class="row vmarg40bot">
    <div class="span6">
      <div class="hpad20right">
        <h4 class="title">Balances</h4>

        <div id="DataTables_Table_2_wrapper" class="dataTables_wrapper form-inline" role="grid"><table
            class="table table-hover table-striped dataTable table-balance" id="DataTables_Table_2">
          <thead>
          <tr role="row"><th class="lalign nw sorting_desc" role="columnheader" tabindex="0"
                             aria-controls="DataTables_Table_2" rowspan="1" colspan="1" aria-sort="descending"
                             aria-label="Currency: activate to sort column ascending">Currency</th><th
              class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1"
              colspan="1" aria-label="Balance: activate to sort column ascending">Balance</th><th class="ralign sorting"
                                                                                                  role="columnheader"
                                                                                                  tabindex="0"
                                                                                                  aria-controls="DataTables_Table_2"
                                                                                                  rowspan="1"
                                                                                                  colspan="1"
                                                                                                  aria-label="Rate: activate to sort column ascending">Rate</th>
          </tr>
          </thead>

          <tfoot>
          <tr><th name="total-label" class="nw" rowspan="1" colspan="1">Total (XRP):</th><th class="ralign" name="total"
                                                                                             rowspan="1"
                                                                                             colspan="1"><div
                class="textAlignDecimal"><span>Ʀ21,045</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">07521</span></div></th><th class="ralign" rowspan="1" colspan="1"></th></tr>
          </tfoot>
          <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td class="nw">Ripple (XRP)</td><td
              class="ralign" sort="257.31690"><div class="textAlignDecimal"><span>Ʀ257</span><span
                style="width: 7px;">.</span><span style="width: 35px;">31690</span></div></td><td class="ralign"
                                                                                                  sort="0">——</td>
          </tr><tr class="even"><td class="nw">Litecoin (LTC)</td><td class="ralign" sort="1.65835"><div
              class="textAlignDecimal"><span>Ł1</span><span style="width: 7px;">.</span><span
                style="width: 35px;">65835</span></div></td><td class="ralign" sort="0.00000000">Ʀ0.00000</td></tr><tr
              class="odd"><td class="nw">Bitcoin (XBT)</td><td class="ralign" sort="0.24119"><div
                class="textAlignDecimal"><span>฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">24119</span></div></td><td class="ralign" sort="0.00000000">Ʀ0.00000</td></tr>
          </tbody></table></div>
      </div>
    </div>

    <div class="span6">
      <div class="hpad20left">
        <div class="clearfix">
          <h4 class="pull-left title">Rates</h4>

          <p class="pull-right table-title-hint">Exchange rates used for trade balance calculations.</p>
        </div>

        <div id="DataTables_Table_3_wrapper" class="dataTables_wrapper form-inline" role="grid"><table
            class="table table-hover table-striped dataTable table-rate" id="DataTables_Table_3">
          <thead>
          <tr role="row"><th class="lalign nw sorting" role="columnheader" tabindex="0"
                             aria-controls="DataTables_Table_3" rowspan="1" colspan="1"
                             aria-label="Currency Pair: activate to sort column ascending">Currency Pair</th><th
              class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_3" rowspan="1"
              colspan="1" aria-label="Rate: activate to sort column ascending">Rate</th></tr>
          </thead>

          <tfoot>
          <tr><th class="nw" rowspan="1" colspan="1"></th><th class="ralign" rowspan="1" colspan="1"></th></tr>
          </tfoot>
          <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td class="nw">KRW/XRP</td><td
              class="ralign"><div class="textAlignDecimal"><span>Ʀ0</span><span>.</span><span>3555<span
                class="deczeros">0</span></span></div></td></tr><tr class="even"><td class="nw">LTC/EUR</td><td
              class="ralign"><div class="textAlignDecimal"><span>€7</span><span>.</span><span>52502</span></div></td>
          </tr><tr class="odd"><td class="nw">XVN/XRP</td><td class="ralign"><div
              class="textAlignDecimal"><span>Ʀ8</span><span>.</span><span>418</span></div></td></tr><tr class="even"><td
              class="nw">LTC/USD</td><td class="ralign"><div
              class="textAlignDecimal"><span>$10</span><span>.</span><span>12225</span></div></td></tr><tr
              class="odd"><td class="nw">XBT/LTC</td><td class="ralign"><div
                class="textAlignDecimal"><span>Ł42</span><span>.</span><span>88626</span></div></td></tr><tr
              class="even"><td class="nw">USD/XRP</td><td class="ralign"><div
                class="textAlignDecimal"><span>Ʀ167</span><span>.</span><span>0<span class="deczeros">00</span></span>
            </div></td></tr><tr class="odd"><td class="nw">EUR/XRP</td><td class="ralign"><div
              class="textAlignDecimal"><span>Ʀ223</span><span>.</span><span>956</span></div></td></tr><tr
              class="even"><td class="nw">XBT/NMC</td><td class="ralign"><div
                class="textAlignDecimal"><span>ℕ223</span><span>.</span><span>96416</span></div></td></tr><tr
              class="odd"><td class="nw">XBT/EUR</td><td class="ralign"><div
                class="textAlignDecimal"><span>€326</span><span>.</span><span>19458</span></div></td></tr><tr
              class="even"><td class="nw">NMC/XRP</td><td class="ralign"><div
                class="textAlignDecimal"><span>Ʀ329</span><span>.</span><span>547</span></div></td></tr><tr
              class="odd"><td class="nw">XBT/USD</td><td class="ralign"><div
                class="textAlignDecimal"><span>$446</span><span>.</span><span>832<span class="deczeros">00</span></span>
            </div></td></tr><tr class="even"><td class="nw">LTC/XRP</td><td class="ralign"><div
              class="textAlignDecimal"><span>Ʀ1,724</span><span>.</span><span>993</span></div></td></tr><tr
              class="odd"><td class="nw">XBT/XVN</td><td class="ralign"><div
                class="textAlignDecimal"><span>℣10,250</span><span>.</span><span>0<span class="deczeros">0000</span>
              </span></div></td></tr><tr class="even"><td class="nw">LTC/XDG</td><td class="ralign"><div
              class="textAlignDecimal"><span>Ð23,150</span><span>.</span><span>0<span class="deczeros">0</span></span>
          </div></td></tr><tr class="odd"><td class="nw">LTC/KRW</td><td class="ralign"><div
              class="textAlignDecimal"><span>₩42,000</span><span>.</span><span>0<span class="deczeros">00</span></span>
          </div></td></tr><tr class="even"><td class="nw">XBT/XRP</td><td class="ralign"><div
              class="textAlignDecimal"><span>Ʀ74,324</span><span>.</span><span>999</span></div></td></tr><tr
              class="odd"><td class="nw">XBT/KRW</td><td class="ralign"><div
                class="textAlignDecimal"><span>₩570,000</span><span>.</span><span>0<span class="deczeros">00</span>
              </span></div></td></tr><tr class="even"><td class="nw">XBT/XDG</td><td class="ralign"><div
              class="textAlignDecimal"><span>Ð976,951</span><span>.</span><span>3</span></div></td></tr></tbody></table>
        </div>
      </div>
    </div>
  </div>

  <div class="row vmarg40bot tradebalance-wrap">
    <div class="span12">
      <div class="row stats-dots-wrap vpad5top">
        <div class="span6">
          <div class="hpad20right">
            <h4 class="title">Trade Balances</h4>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Trade Balance</td>
                <td class="dots"></td>
                <td name="tradebalance" class="mono">Ʀ21,045.07521</td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">Total combined currency balance.</td>
              </tr>
              </tbody></table>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Equity</td>
                <td class="dots"></td>
                <td name="equity" class="mono">Ʀ21,045.07521</td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">Trade balance combined with unrealized profit/loss.</td>
              </tr>
              </tbody></table>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Initial Margin</td>
                <td class="dots"></td>
                <td name="margin" class="mono">Ʀ0.00000000</td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">Total initial margin amount of open positions.</td>
              </tr>
              </tbody></table>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Free Margin</td>
                <td class="dots"></td>
                <td name="freemargin" class="mono">Ʀ21,045.07521</td>
              </tr>
              <tr>
                <td colspan="3"
                    class="control-hint ralign">Usable margin balance. Equal to equity minus margin balance.</td>
              </tr>
              </tbody></table>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Margin Level</td>
                <td class="dots"></td>
                <td name="marginlevel" class="mono">——</td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">Percentage of available margin.</td>
              </tr>
              </tbody></table>
          </div>
        </div>

        <div class="span6">
          <div class="hpad20left">
            <h4 class="title">Position Valuation</h4>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Opening Cost</td>
                <td class="dots"></td>
                <td name="unrealized-cost" class="mono">Ʀ0.00000000</td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">Original cost of all open positions.</td>
              </tr>
              </tbody></table>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Current Valuation</td>
                <td class="dots"></td>
                <td name="unrealized-value" class="mono">Ʀ0.00000000</td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">Paper valuation of all open positions.</td>
              </tr>
              </tbody></table>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Profit/Loss</td>
                <td class="dots"></td>
                <td class="mono"><span name="unrealized">Ʀ0.00000000</span> <small name="unrealized-pct">(0.00%)</small>
                </td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">Paper profit/loss of all open positions.</td>
              </tr>
              </tbody></table>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="clearfix slider ledger-wrap">
    <div class="transfer" style="width: 1900px;">
      <div class="frame" style="width: 950px;">
        <h4 class="title">Ledger</h4>

        <div id="DataTables_Table_5_wrapper" class="dataTables_wrapper form-inline" role="grid"><div
            class="dataTables_table_wrapper" style="min-height: 318px;"><table
              class="table table-hover table-striped dataTable table-ledger" id="DataTables_Table_5"
              aria-describedby="DataTables_Table_5_info">
            <thead>
            <tr role="row"><th class="lalign nw sorting" role="columnheader" tabindex="0"
                               aria-controls="DataTables_Table_5" rowspan="1" colspan="1" style="width: 85px;"
                               aria-label="Ledger ID: activate to sort column ascending">Ledger ID</th><th
                class="lalign sorting_desc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_5"
                rowspan="1" colspan="1" aria-sort="descending"
                aria-label="Date: activate to sort column ascending">Date</th><th class="lalign sorting"
                                                                                  role="columnheader" tabindex="0"
                                                                                  aria-controls="DataTables_Table_5"
                                                                                  rowspan="1" colspan="1"
                                                                                  aria-label="Type: activate to sort column ascending">Type</th><th
                class="lalign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_5" rowspan="1"
                colspan="1" aria-label="Currency: activate to sort column ascending">Currency</th><th
                class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_5" rowspan="1"
                colspan="1" aria-label="Amount: activate to sort column ascending">Amount</th><th class="ralign sorting"
                                                                                                  role="columnheader"
                                                                                                  tabindex="0"
                                                                                                  aria-controls="DataTables_Table_5"
                                                                                                  rowspan="1"
                                                                                                  colspan="1"
                                                                                                  aria-label="Fee: activate to sort column ascending">Fee</th><th
                class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_5" rowspan="1"
                colspan="1" aria-label="Balance: activate to sort column ascending">Balance</th></tr>
            </thead>

            <tbody role="alert" aria-live="polite" aria-relevant="all"><tr id="LKJCDF-DOFW7-LZH2FO" class="odd"><td
                class="nw"><a href="/u/trade#tab=overview&amp;lid=LKJCDF-DOFW7-LZH2FO" class="txid tt" title=""
                              data-container="body" value="LKJCDF-DOFW7-LZH2FO"
                              data-original-title="LKJCDF-DOFW7-LZH2FO">LKJCDF</a></td><td
                class="">04-07-14 18:16:24 +0200</td><td class="">Trade</td><td class="">Ripple (XRP)</td><td
                class="ralign neg"><div class="textAlignDecimal"><span>-Ʀ552</span><span
                  style="width: 7px;">.</span><span style="width: 35px;">12000</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>Ʀ0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">55212</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>Ʀ257</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">31690</span></div></td></tr><tr id="L7EA5D-ZRR2D-AWFBQO" class="even"><td
                class="nw"><a href="/u/trade#tab=overview&amp;lid=L7EA5D-ZRR2D-AWFBQO" class="txid tt" title=""
                              data-container="body" value="L7EA5D-ZRR2D-AWFBQO"
                              data-original-title="L7EA5D-ZRR2D-AWFBQO">L7EA5D</a></td><td
                class="">04-07-14 18:16:24 +0200</td><td class="">Trade</td><td class="">Bitcoin (XBT)</td><td
                class="ralign"><div class="textAlignDecimal"><span>฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">01000</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">00000</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">24119</span></div></td></tr><tr id="L2YBQ7-X2NEG-OP7M4S" class="odd"><td
                class="nw"><a href="/u/trade#tab=overview&amp;lid=L2YBQ7-X2NEG-OP7M4S" class="txid tt" title=""
                              data-container="body" value="L2YBQ7-X2NEG-OP7M4S"
                              data-original-title="L2YBQ7-X2NEG-OP7M4S">L2YBQ7</a></td><td
                class="">03-29-14 01:45:55 +0100</td><td class="">Trade</td><td class="">Ripple (XRP)</td><td
                class="ralign"><div class="textAlignDecimal"><span>Ʀ476</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">00000</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>Ʀ0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">47600</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>Ʀ809</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">98902</span></div></td></tr><tr id="LEESJJ-IRZZO-VCTODY" class="even"><td
                class="nw"><a href="/u/trade#tab=overview&amp;lid=LEESJJ-IRZZO-VCTODY" class="txid tt" title=""
                              data-container="body" value="LEESJJ-IRZZO-VCTODY"
                              data-original-title="LEESJJ-IRZZO-VCTODY">LEESJJ</a></td><td
                class="">03-29-14 01:45:55 +0100</td><td class="">Trade</td><td class="">Bitcoin (XBT)</td><td
                class="ralign neg"><div class="textAlignDecimal"><span>-฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">01000</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">00000</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">23119</span></div></td></tr><tr id="LZ4XCL-TGWNZ-CB3P4F" class="odd"><td
                class="nw"><a href="/u/trade#tab=overview&amp;lid=LZ4XCL-TGWNZ-CB3P4F" class="txid tt" title=""
                              data-container="body" value="LZ4XCL-TGWNZ-CB3P4F"
                              data-original-title="LZ4XCL-TGWNZ-CB3P4F">LZ4XCL</a></td><td
                class="">03-23-14 12:31:54 +0100</td><td class="">Trade</td><td class="">Ripple (XRP)</td><td
                class="ralign neg"><div class="textAlignDecimal"><span>-Ʀ99</span><span
                  style="width: 7px;">.</span><span style="width: 35px;">99998</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>Ʀ0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">10000</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>Ʀ334</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">46502</span></div></td></tr><tr id="LUJZUL-YUOG2-BQHNTY" class="even"><td
                class="nw"><a href="/u/trade#tab=overview&amp;lid=LUJZUL-YUOG2-BQHNTY" class="txid tt" title=""
                              data-container="body" value="LUJZUL-YUOG2-BQHNTY"
                              data-original-title="LUJZUL-YUOG2-BQHNTY">LUJZUL</a></td><td
                class="">03-23-14 12:31:54 +0100</td><td class="">Trade</td><td class="">Bitcoin (XBT)</td><td
                class="ralign"><div class="textAlignDecimal"><span>฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">00219</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">00000</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">24119</span></div></td></tr><tr id="LHOCZS-WSZ5S-YXYMET" class="odd"><td
                class="nw"><a href="/u/trade#tab=overview&amp;lid=LHOCZS-WSZ5S-YXYMET" class="txid tt" title=""
                              data-container="body" value="LHOCZS-WSZ5S-YXYMET"
                              data-original-title="LHOCZS-WSZ5S-YXYMET">LHOCZS</a></td><td
                class="">03-20-14 18:16:32 +0100</td><td class="">Trade</td><td class="">Ripple (XRP)</td><td
                class="ralign"><div class="textAlignDecimal"><span>Ʀ435</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">00000</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>Ʀ0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">43500</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>Ʀ434</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">56500</span></div></td></tr><tr id="LUBHAD-DPOVP-622OJD" class="even"><td
                class="nw"><a href="/u/trade#tab=overview&amp;lid=LUBHAD-DPOVP-622OJD" class="txid tt" title=""
                              data-container="body" value="LUBHAD-DPOVP-622OJD"
                              data-original-title="LUBHAD-DPOVP-622OJD">LUBHAD</a></td><td
                class="">03-20-14 18:16:32 +0100</td><td class="">Trade</td><td class="">Bitcoin (XBT)</td><td
                class="ralign neg"><div class="textAlignDecimal"><span>-฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">01000</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">00000</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">23900</span></div></td></tr><tr id="LNX776-SMMJW-CLYO4W" class="odd"><td
                class="nw"><a href="/u/trade#tab=overview&amp;lid=LNX776-SMMJW-CLYO4W" class="txid tt" title=""
                              data-container="body" value="LNX776-SMMJW-CLYO4W"
                              data-original-title="LNX776-SMMJW-CLYO4W">LNX776</a></td><td
                class="">03-19-14 12:46:55 +0100</td><td class="">Withdrawal</td><td class="">Bitcoin (XBT)</td><td
                class="ralign neg"><div class="textAlignDecimal"><span>-฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">00050</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">00050</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>฿0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">24900</span></div></td></tr><tr id="LF2QFD-TCT3D-NKSDTV" class="even"><td
                class="nw"><a href="/u/trade#tab=overview&amp;lid=LF2QFD-TCT3D-NKSDTV" class="txid tt" title=""
                              data-container="body" value="LF2QFD-TCT3D-NKSDTV"
                              data-original-title="LF2QFD-TCT3D-NKSDTV">LF2QFD</a></td><td
                class="">03-19-14 10:01:19 +0100</td><td class="">Trade</td><td class="">Litecoin (LTC)</td><td
                class="ralign neg"><div class="textAlignDecimal"><span>-Ł8</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">32500</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>Ł0</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">01665</span></div></td><td class="ralign"><div
                class="textAlignDecimal"><span>Ł1</span><span style="width: 7px;">.</span><span
                  style="width: 35px;">65835</span></div></td></tr></tbody></table></div>

          <div><div class="pull-left"><div class="dataTables_info"
                                           id="DataTables_Table_5_info">1 - 10 of 13 ledger entries</div>

            <div class="max-rows-notice control-hint">Max displayed records reached, <a
                href="/u/history/ledger">see history</a> for all records</div></div>

            <div class="pull-right"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li
                class="disabled"><a href="javascript: void(0);">‹</a></li><li class="active"><a
                href="javascript: void(0);">1</a></li><li><a href="javascript: void(0);">2</a></li><li><a
                href="javascript: void(0);">›</a></li></ul></div></div>

            <div class="clearfix"></div></div></div>
      </div>

      <div class="frame" style="width: 950px; visibility: hidden;">
      </div>
    </div>
  </div>
</div>