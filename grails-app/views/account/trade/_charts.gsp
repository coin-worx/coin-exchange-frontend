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


<div class="row vmarg40bot">
  <div class="span6">
    <div class="hpad20right">
      <h4 class="title">Balances</h4>

      <div id="DataTables_Table_2_wrapper" class="dataTables_wrapper form-inline" role="grid"><table class="table table-hover table-striped dataTable table-balance" id="DataTables_Table_2">
        <thead>
        <tr role="row"><th class="lalign nw sorting_desc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" aria-sort="descending" aria-label="Currency: activate to sort column ascending">Currency</th><th class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" aria-label="Balance: activate to sort column ascending">Balance</th><th class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" aria-label="Rate: activate to sort column ascending">Rate</th></tr>
        </thead>

        <tfoot>
        <tr><th name="total-label" class="nw" rowspan="1" colspan="1">Total (XRP):</th><th class="ralign" name="total" rowspan="1" colspan="1"><div class="textAlignDecimal"><span>Ʀ20,514</span><span style="width: 7px;">.</span><span style="width: 35px;">44900</span></div></th><th class="ralign" rowspan="1" colspan="1"></th></tr>
        </tfoot>
        <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td class="nw">Ripple (XRP)</td><td class="ralign" sort="257.31690"><div class="textAlignDecimal"><span>Ʀ257</span><span style="width: 7px;">.</span><span style="width: 35px;">31690</span></div></td><td class="ralign" sort="0">——</td></tr><tr class="even"><td class="nw">Litecoin (LTC)</td><td class="ralign" sort="1.65835"><div class="textAlignDecimal"><span>Ł1</span><span style="width: 7px;">.</span><span style="width: 35px;">65835</span></div></td><td class="ralign" sort="0.00000000">Ʀ0.00000</td>
        </tr><tr class="odd"><td class="nw">Bitcoin (XBT)</td><td class="ralign" sort="0.24119"><div class="textAlignDecimal"><span>฿0</span><span style="width: 7px;">.</span><span style="width: 35px;">24119</span></div></td><td class="ralign" sort="0.00000000">Ʀ0.00000</td></tr>
        </tbody></table></div>
    </div>
  </div>

  <div class="span6">
    <div class="hpad20left">
      <div class="clearfix">
        <h4 class="pull-left title">Rates</h4>

        <p class="pull-right table-title-hint">Exchange rates used for trade balance calculations.</p>
      </div>

      <div id="DataTables_Table_3_wrapper" class="dataTables_wrapper form-inline" role="grid"><table class="table table-hover table-striped dataTable table-rate" id="DataTables_Table_3">
        <thead>
        <tr role="row"><th class="lalign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_3" rowspan="1" colspan="1" aria-label="Currency Pair: activate to sort column ascending">Currency Pair</th><th class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_3" rowspan="1" colspan="1" aria-label="Rate: activate to sort column ascending">Rate</th></tr>
        </thead>

        <tfoot>
        <tr><th class="nw" rowspan="1" colspan="1"></th><th class="ralign" rowspan="1" colspan="1"></th></tr>
        </tfoot>
        <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td class="nw">KRW/XRP</td><td class="ralign"><div class="textAlignDecimal"><span>Ʀ0</span><span style="width: 7px;">.</span><span style="width: 35px;">3555<span class="deczeros">0</span></span></div></td></tr><tr class="even"><td class="nw">LTC/EUR</td><td class="ralign"><div class="textAlignDecimal"><span>€7</span><span style="width: 7px;">.</span><span style="width: 35px;">67362</span></div></td></tr><tr class="odd"><td class="nw">XVN/XRP</td><td class="ralign"><div class="textAlignDecimal"><span>Ʀ8</span><span style="width: 7px;">.</span><span style="width: 35px;">4<span class="deczeros">00</span></span></div>
        </td></tr><tr class="even"><td class="nw">LTC/USD</td><td class="ralign"><div class="textAlignDecimal"><span>$10</span><span style="width: 7px;">.</span><span style="width: 35px;">58579</span></div></td></tr><tr class="odd"><td class="nw">XBT/LTC</td><td class="ralign"><div class="textAlignDecimal"><span>Ł41</span><span style="width: 7px;">.</span><span style="width: 35px;">59744</span></div></td></tr><tr class="even"><td class="nw">USD/XRP</td><td class="ralign"><div class="textAlignDecimal"><span>Ʀ159</span><span style="width: 7px;">.</span><span style="width: 35px;">053</span></div></td></tr><tr class="odd"><td class="nw">XBT/NMC</td><td class="ralign"><div class="textAlignDecimal"><span>ℕ215</span><span style="width: 7px;">.</span><span style="width: 35px;">40624</span></div></td></tr><tr class="even"><td class="nw">EUR/XRP</td><td class="ralign"><div class="textAlignDecimal"><span>Ʀ222</span><span style="width: 7px;">.</span><span style="width: 35px;">394</span></div></td></tr><tr class="odd"><td class="nw">XBT/EUR</td><td class="ralign"><div class="textAlignDecimal"><span>€318</span><span style="width: 7px;">.</span><span style="width: 35px;">82569</span></div></td></tr><tr class="even"><td class="nw">NMC/XRP</td><td class="ralign"><div class="textAlignDecimal"><span>Ʀ333</span><span style="width: 7px;">.</span><span style="width: 35px;">521</span></div></td></tr><tr class="odd"><td class="nw">XBT/USD</td><td class="ralign"><div class="textAlignDecimal"><span>$444</span><span style="width: 7px;">.</span><span style="width: 35px;">54636</span></div></td></tr><tr class="even"><td class="nw">LTC/XRP</td><td class="ralign"><div class="textAlignDecimal"><span>Ʀ1,725</span><span style="width: 7px;">.</span><span style="width: 35px;">0<span class="deczeros">00</span></span></div></td></tr><tr class="odd"><td class="nw">XBT/XVN</td><td class="ralign"><div class="textAlignDecimal"><span>℣10,250</span><span style="width: 7px;">.</span><span style="width: 35px;">0<span class="deczeros">0000</span></span></div>
        </td></tr><tr class="even"><td class="nw">LTC/XDG</td><td class="ralign"><div class="textAlignDecimal"><span>Ð22,724</span><span style="width: 7px;">.</span><span style="width: 35px;">99</span></div></td></tr><tr class="odd"><td class="nw">LTC/KRW</td><td class="ralign"><div class="textAlignDecimal"><span>₩42,000</span><span style="width: 7px;">.</span><span style="width: 35px;">0<span class="deczeros">00</span></span></div></td></tr><tr class="even"><td class="nw">XBT/XRP</td><td class="ralign"><div class="textAlignDecimal"><span>Ʀ72,124</span><span style="width: 7px;">.</span><span style="width: 35px;">999</span></div></td></tr><tr class="odd"><td class="nw">XBT/KRW</td><td class="ralign"><div class="textAlignDecimal"><span>₩649,500</span><span style="width: 7px;">.</span><span style="width: 35px;">0<span class="deczeros">00</span></span></div>
        </td></tr><tr class="even"><td class="nw">XBT/XDG</td><td class="ralign"><div class="textAlignDecimal"><span>Ð942,653</span><span style="width: 7px;">.</span><span style="width: 35px;">5</span></div></td></tr></tbody></table></div>
    </div>
  </div>
</div>