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


<div id="order-adv" class="slider tab-pane ">
<div class="transfer" style="width: 1900px;">
<div class="frame" style="width: 950px;">
<h4 class="line-title vmarg20top"><span class="title">Primary Order</span></h4>

<form class="form-order form-horizontal form-control-left jq-validate-form no-left-margin compact vmarg0" method="post"
      autocomplete="off" novalidate="novalidate">
<div class="vpad10 alert alert-block alert-error error-grouped hidden2" style="display: none;"></div>
<fieldset>
<div class="row">
<div class="span6">
  <div class="control-group">
    <label class="control-label">Order</label>

    <div class="controls">
      <div class="ib">
        <div class="btn-group" data-toggle="buttons-radio" name="type">
          <button type="button" value="buy" class="btn btn-success active" autocomplete="off">Buy</button><button
            type="button" value="sell" class="btn" autocomplete="off">Sell</button>
        </div>
      </div>

      <div class="ib hmarg20left">
        <input type="hidden" name="asset" value="XBTXRP">

        <div class="dropdown">
          <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
            <span class="pairtext">XBT/XRP</span>
            <span class="caret"></span>
          </a>
          <ul class="dropdown-menu pair-selector" role="menu" aria-labelledby="dLabel" style="z-index:100000;">
            <li class="dropdown-submenu">
              <a tabindex="-1" href="#">EUR</a>
              <ul class="dropdown-menu pairlist">
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="EURXDG" data-pair-text="EUR/XDG">EUR/XDG</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="EURXRP" data-pair-text="EUR/XRP">EUR/XRP</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="EURXVN" data-pair-text="EUR/XVN">EUR/XVN</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="LTCEUR" data-pair-text="LTC/EUR">LTC/EUR</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="NMCEUR" data-pair-text="NMC/EUR">NMC/EUR</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTEUR" data-pair-text="XBT/EUR">XBT/EUR</a>
                </li>
              </ul>
            </li>
            <li class="dropdown-submenu">
              <a tabindex="-1" href="#">KRW</a>
              <ul class="dropdown-menu pairlist">
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="KRWXRP" data-pair-text="KRW/XRP">KRW/XRP</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="LTCKRW" data-pair-text="LTC/KRW">LTC/KRW</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="NMCKRW" data-pair-text="NMC/KRW">NMC/KRW</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTKRW" data-pair-text="XBT/KRW">XBT/KRW</a>
                </li>
              </ul>
            </li>
            <li class="dropdown-submenu">
              <a tabindex="-1" href="#">LTC</a>
              <ul class="dropdown-menu pairlist">
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="LTCEUR" data-pair-text="LTC/EUR">LTC/EUR</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="LTCKRW" data-pair-text="LTC/KRW">LTC/KRW</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="LTCUSD" data-pair-text="LTC/USD">LTC/USD</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="LTCXDG" data-pair-text="LTC/XDG">LTC/XDG</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="LTCXRP" data-pair-text="LTC/XRP">LTC/XRP</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTLTC" data-pair-text="XBT/LTC">XBT/LTC</a>
                </li>
              </ul>
            </li>
            <li class="dropdown-submenu">
              <a tabindex="-1" href="#">NMC</a>
              <ul class="dropdown-menu pairlist">
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="NMCEUR" data-pair-text="NMC/EUR">NMC/EUR</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="NMCKRW" data-pair-text="NMC/KRW">NMC/KRW</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="NMCUSD" data-pair-text="NMC/USD">NMC/USD</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="NMCXDG" data-pair-text="NMC/XDG">NMC/XDG</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="NMCXRP" data-pair-text="NMC/XRP">NMC/XRP</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTNMC" data-pair-text="XBT/NMC">XBT/NMC</a>
                </li>
              </ul>
            </li>
            <li class="dropdown-submenu">
              <a tabindex="-1" href="#">USD</a>
              <ul class="dropdown-menu pairlist">
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="LTCUSD" data-pair-text="LTC/USD">LTC/USD</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="NMCUSD" data-pair-text="NMC/USD">NMC/USD</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="USDXDG" data-pair-text="USD/XDG">USD/XDG</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="USDXRP" data-pair-text="USD/XRP">USD/XRP</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="USDXVN" data-pair-text="USD/XVN">USD/XVN</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTUSD" data-pair-text="XBT/USD">XBT/USD</a>
                </li>
              </ul>
            </li>
            <li class="dropdown-submenu">
              <a tabindex="-1" href="#">XBT</a>
              <ul class="dropdown-menu pairlist">
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTEUR" data-pair-text="XBT/EUR">XBT/EUR</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTKRW" data-pair-text="XBT/KRW">XBT/KRW</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTLTC" data-pair-text="XBT/LTC">XBT/LTC</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTNMC" data-pair-text="XBT/NMC">XBT/NMC</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTUSD" data-pair-text="XBT/USD">XBT/USD</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTXDG" data-pair-text="XBT/XDG">XBT/XDG</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTXRP" data-pair-text="XBT/XRP">XBT/XRP</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTXVN" data-pair-text="XBT/XVN">XBT/XVN</a>
                </li>
              </ul>
            </li>
            <li class="dropdown-submenu">
              <a tabindex="-1" href="#">XDG</a>
              <ul class="dropdown-menu pairlist">
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="EURXDG" data-pair-text="EUR/XDG">EUR/XDG</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="LTCXDG" data-pair-text="LTC/XDG">LTC/XDG</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="NMCXDG" data-pair-text="NMC/XDG">NMC/XDG</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="USDXDG" data-pair-text="USD/XDG">USD/XDG</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTXDG" data-pair-text="XBT/XDG">XBT/XDG</a>
                </li>
              </ul>
            </li>
            <li class="dropdown-submenu">
              <a tabindex="-1" href="#">XRP</a>
              <ul class="dropdown-menu pairlist">
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="EURXRP" data-pair-text="EUR/XRP">EUR/XRP</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="KRWXRP" data-pair-text="KRW/XRP">KRW/XRP</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="LTCXRP" data-pair-text="LTC/XRP">LTC/XRP</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="NMCXRP" data-pair-text="NMC/XRP">NMC/XRP</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="USDXRP" data-pair-text="USD/XRP">USD/XRP</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTXRP" data-pair-text="XBT/XRP">XBT/XRP</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XVNXRP" data-pair-text="XVN/XRP">XVN/XRP</a>
                </li>
              </ul>
            </li>
            <li class="dropdown-submenu">
              <a tabindex="-1" href="#">XVN</a>
              <ul class="dropdown-menu pairlist">
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="EURXVN" data-pair-text="EUR/XVN">EUR/XVN</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="USDXVN" data-pair-text="USD/XVN">USD/XVN</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XBTXVN" data-pair-text="XBT/XVN">XBT/XVN</a>
                </li>
                <li><a class="currpairs" tabindex="-1" href="#" data-pair="XVNXRP" data-pair-text="XVN/XRP">XVN/XRP</a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>

      <p class="control-hint">Choose to buy or sell a currency pair.</p>
    </div>
  </div>

  <div class="control-group">
    <label class="control-label">Volume</label>

    <div class="controls">
      <div class="input-append">
        <input type="text" autocomplete="off" class="span2 ralign hmarg0right" value="" name="volume">

        <div class="ib posrel"><div class="dropdown"><a href="#" title="" data-value="XXBT"
                                                        class="btn add-on volume-currency-toggle rounded dropdown-toggle tt"
                                                        data-toggle="dropdown"
                                                        data-original-title="Click to switch amount currency.">XBT <span
              class="caret"></span></a>
          <ul class="dropdown-menu small">
            <li data-value="XXBT" data-display="XBT" class="disabled">
              <a href="#">Bitcoin (XBT)</a>
            </li>
            <li data-value="XXRP" data-display="XRP">
              <a href="#">Ripple (XRP)</a>
            </li>
          </ul>
        </div>
        </div>
      </div>

      <p class="control-hint">Amount of XBT to buy.</p>
    </div>
  </div>

  <div class="adv-ot-wrap">
    <div class="control-group">
      <label class="control-label">Order Type</label>

      <div class="controls">
        <select name="ordertype" class="input-large ordertype" autocomplete="off"><option
            value="market">Market</option><option value="limit">Limit</option><option
            value="stop-loss">Stop Loss</option><option value="take-profit">Take Profit</option><option
            value="stop-loss-profit">Stop Loss, Take Profit</option><option
            value="stop-loss-profit-limit">Stop Loss, Take Profit Limit</option><option
            value="stop-loss-limit">Stop Loss Limit</option><option
            value="take-profit-limit">Take Profit Limit</option><option
            value="trailing-stop">Trailing Stop</option><option
            value="trailing-stop-limit">Trailing Stop Limit</option><option
            value="stop-loss-and-limit">Stop, Limit</option></select>

        <p class="control-hint ordertype-hint">Buy at a fixed price per XBT.</p>
      </div>
    </div>

    <div class="control-group">
      <label class="control-label pricelabel">Limit Price</label>

      <div class="controls">
        <div class="pricetype-wrap">
          <div class="ib hmarg5right">
            <div class="ib btn-group">
              <button type="button" class="btn btn-mini tt pricetype" value="plus" title="" autocomplete="off"
                      data-original-title="Positive offset from market price">+</button><button type="button"
                                                                                                class="btn btn-mini tt pricetype active btn-info"
                                                                                                value="fixed" title=""
                                                                                                autocomplete="off"
                                                                                                data-original-title="Static, non-relative price">=</button><button
                type="button" class="btn btn-mini tt pricetype" value="minus" title="" autocomplete="off"
                data-original-title="Negative offset from market price">-</button>
            </div>
          </div>

          <div class="ib hmarg5right">
            <div class="input-append">
              <input type="text" class="span2 ralign hmarg0 price" value="" name="price" autocomplete="off"><span
                class="add-on">XRP</span>
            </div>
          </div>

          <div class="ib">
            <button type="button" class="btn tt skinny pricetype" value="percent" title="" autocomplete="off"
                    data-original-title="Percentage of market price">%</button>
          </div>

          <p class="control-hint pricehint">+/- relative to market price, = for fixed price.</p>
        </div>
      </div>
    </div>

    <div class="control-group price2wrap hidden2" style="display: none;">
      <label class="control-label price2label">Secondary Price</label>

      <div class="controls">
        <div class="pricetype-wrap">
          <div class="ib hmarg5right">
            <div class="ib btn-group">
              <button type="button" class="btn btn-mini tt price2type" value="plus" disabled="disabled" title=""
                      autocomplete="off" data-original-title="Positive offset from market price">+</button><button
                type="button" class="btn btn-mini tt price2type" value="fixed" disabled="disabled" title=""
                autocomplete="off" data-original-title="Static, non-relative price">=</button><button type="button"
                                                                                                      class="btn btn-mini tt price2type"
                                                                                                      value="minus"
                                                                                                      disabled="disabled"
                                                                                                      title=""
                                                                                                      autocomplete="off"
                                                                                                      data-original-title="Negative offset from market price">-</button>
            </div>
          </div>

          <div class="ib hmarg5right">
            <div class="input-append">
              <input type="text" disabled="disabled" class="span2 ralign hmarg0 price2" value="" name="price2"
                     autocomplete="off"><span class="add-on">XRP</span>
            </div>
          </div>

          <div class="ib">
            <button type="button" class="btn tt skinny price2type" value="percent" disabled="disabled" title=""
                    autocomplete="off" data-original-title="Percentage of market price">%</button>
          </div>

          <p class="control-hint price2hint">&nbsp;</p>
        </div>
      </div>
    </div>
  </div>

  <div class="control-group">
    <label class="control-label">Total</label>

    <div class="controls">
      <div class="input-append">
        <input type="text" tabindex="3" autocomplete="off" class="span2 ralign hmarg0right" value="" name="total"><span
          class="add-on">XRP</span>
      </div>

      <p class="control-hint" name="total-hint">Estimated amount of XRP to spend.</p>
    </div>
  </div>
</div>

<div class="span6">
  <div class="hmarg20left">
    <div class="control-group">
      <label class="control-label">Leverage</label>

      <div class="controls">
        <div class="btn-toolbar vmarg0" data-toggle="buttons-radio" name="leverage">
          <div class="btn-group">
            <button type="button" class="btn active" value="none" autocomplete="off">None</button>
          </div>

          <div class="btn-group">
            <button type="button" class="btn" value="1:1" autocomplete="off" disabled="disabled">1</button>
            <button type="button" class="btn" value="2:1" autocomplete="off" disabled="disabled">2</button>
            <button type="button" class="btn" value="5:1" autocomplete="off" disabled="disabled">5</button>
            <button type="button" class="btn" value="10:1" autocomplete="off" disabled="disabled">10</button>
          </div>
        </div>

        <p class="control-hint">&nbsp;</p>
      </div>
    </div>

    <div class="control-group">
      <label class="control-label">Start</label>

      <div class="controls">
        <select name="start" class="input-large" autocomplete="off"><option value="">Now</option><option
            value="custom">Custom...</option></select>

        <div class="custom-start-wrap hidden2 vmarg20top">
          <div class="startdate-wrap ib input-append date hmarg5right" data-date-format="mm-dd-yy">
            <input name="startdate" autocomplete="off" readonly="readonly" class="input-smaller hmarg0right" type="text"
                   default="06-05-14" value="06-05-14"><span class="add-on"><i class="icon-calendar"></i></span>
          </div>

          <div class="ib input-append bootstrap-timepicker-component">
            <input name="starttime" autocomplete="off" readonly="readonly"
                   class="timepicker-default input-smaller hmarg0right" type="text" value=""><span class="add-on"><i
              class="icon-time"></i></span>
          </div>
          <a class="hpad10left smaller startreset" href="javascript: void(0);">Reset</a>
        </div>

        <p class="control-hint">When this order should be placed on the market.</p>
      </div>
    </div>

    <div class="control-group">
      <label class="control-label">Expires</label>

      <div class="controls">
        <select name="expire" class="input-large" autocomplete="off"><option
            value="gtc">Good until cancelled</option><option value="gtd">Good this day</option><option
            value="gtw">Good this week</option><option value="gtm">Good this month</option><option
            value="custom">Custom...</option></select>

        <div class="custom-expire-wrap hidden2 vmarg20top">
          <div class="expiredate-wrap ib input-append date hmarg5right" data-date-format="mm-dd-yy">
            <input name="expiredate" autocomplete="off" readonly="readonly" class="input-smaller hmarg0right"
                   type="text" default="06-05-14" value="06-05-14"><span class="add-on"><i class="icon-calendar"></i>
          </span>
          </div>

          <div class="ib input-append bootstrap-timepicker-component">
            <input name="expiretime" autocomplete="off" readonly="readonly"
                   class="timepicker-default input-smaller hmarg0right" type="text" value=""><span class="add-on"><i
              class="icon-time"></i></span>
          </div>
          <a class="hpad10left smaller expirereset" href="javascript: void(0);">Reset</a>
        </div>

        <p class="control-hint">When this order should be canceled (if not filled).</p>
      </div>
    </div>

    <div class="control-group" name="currencypriority">
      <label class="control-label">P/L/Fee Currency</label>

      <div class="controls">
        <div class="btn-group" data-toggle="buttons-radio">
          <button type="button" value="XXBT" class="btn" autocomplete="off">XBT</button><button type="button"
                                                                                                value="XXRP"
                                                                                                class="btn active"
                                                                                                autocomplete="off">XRP</button>
        </div>

        <p class="control-hint">Currency balance to apply profit/loss and fees to.
        </p></div>
    </div>
  </div>
</div>
</div>
<h4 class="line-title vmarg20top"><span class="title">Conditional Close</span></h4>

<div class="vpad10 alert alert-block alert-error error-grouped error-cond hidden2"></div>

<div class="row adv-ot-cond-wrap">
  <div class="span6">
    <div class="control-group">
      <label class="control-label">Order Type</label>

      <div class="controls">
        <select name="cond-eordertype" class="input-large ordertype" autocomplete="off"><option
            value="">None</option><option value="market">Market</option><option value="limit">Limit</option><option
            value="stop-loss">Stop Loss</option><option value="take-profit">Take Profit</option><option
            value="stop-loss-profit">Stop Loss, Take Profit</option><option
            value="stop-loss-profit-limit">Stop Loss, Take Profit Limit</option><option
            value="stop-loss-limit">Stop Loss Limit</option><option
            value="take-profit-limit">Take Profit Limit</option><option
            value="trailing-stop">Trailing Stop</option><option
            value="trailing-stop-limit">Trailing Stop Limit</option><option
            value="stop-loss-and-limit">Stop, Limit</option></select>

        <p class="control-hint ordertype-hint">Buy XBT at the best market price.</p>
      </div>
    </div>

    <div class="control-group">
      <label class="control-label pricelabel">Price</label>

      <div class="controls">
        <div class="pricetype-wrap">
          <div class="ib hmarg5right">
            <div class="ib btn-group">
              <button type="button" class="btn btn-mini tt pricetype" value="plus" disabled="disabled" title=""
                      autocomplete="off" data-original-title="Positive offset from market price">+</button><button
                type="button" class="btn btn-mini active tt pricetype" value="fixed" disabled="disabled" title=""
                autocomplete="off" data-original-title="Static, non-relative price">=</button><button type="button"
                                                                                                      class="btn btn-mini tt pricetype"
                                                                                                      value="minus"
                                                                                                      disabled="disabled"
                                                                                                      title=""
                                                                                                      autocomplete="off"
                                                                                                      data-original-title="Negative offset from market price">-</button>
            </div>
          </div>

          <div class="ib hmarg5right">
            <div class="input-append">
              <input type="text" disabled="disabled" class="span2 ralign hmarg0 price" value="" name="cond-eprice"
                     autocomplete="off"><span class="add-on">XRP</span>
            </div>
          </div>

          <div class="ib">
            <button type="button" class="btn tt skinny pricetype" value="percent" disabled="disabled" title=""
                    autocomplete="off" data-original-title="Percentage of market price">%</button>
          </div>

          <p class="control-hint pricehint">&nbsp;</p>
        </div>
      </div>
    </div>

    <div class="control-group price2wrap hidden2">
      <label class="control-label price2label">Secondary Price</label>

      <div class="controls">
        <div class="pricetype-wrap">
          <div class="ib hmarg5right">
            <div class="ib btn-group">
              <button type="button" class="btn btn-mini tt price2type" value="plus" disabled="disabled" title=""
                      autocomplete="off" data-original-title="Positive offset from market price">+</button><button
                type="button" class="btn btn-mini active tt price2type" value="fixed" disabled="disabled" title=""
                autocomplete="off" data-original-title="Static, non-relative price">=</button><button type="button"
                                                                                                      class="btn btn-mini tt price2type"
                                                                                                      value="minus"
                                                                                                      disabled="disabled"
                                                                                                      title=""
                                                                                                      autocomplete="off"
                                                                                                      data-original-title="Negative offset from market price">-</button>
            </div>
          </div>

          <div class="ib hmarg5right">
            <div class="input-append">
              <input type="text" disabled="disabled" class="span2 ralign hmarg0 price2" value="" name="cond-eprice2"
                     autocomplete="off"><span class="add-on">XRP</span>
            </div>
          </div>

          <div class="ib">
            <button type="button" class="btn tt skinny price2type" value="percent" disabled="disabled" title=""
                    autocomplete="off" data-original-title="Percentage of market price">%</button>
          </div>

          <p class="control-hint price2hint">&nbsp;</p>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="row vpad20">
  <div class="center">
    <button autocomplete="off" type="button" class="btn-order-review btn submit btn-success btn-large">
      <span>Buy XBT with XRP</span>
      »
    </button>
  </div>
</div>
</fieldset>
</form>
</div>

<div class="frame review-wrap" style="width: 950px; visibility: hidden;">
  <div class="row">
    <div class="span12">
      <div class="center">
        <h4 class="centered title vmarg0top">Order Details</h4>

        <div class="well big well-data-list">
        </div>

        <div class="order-complete">
          <div class="vpad10 alert alert-block alert-success">
          </div>

          <div class="center btn-toolbar">
            <button autocomplete="off" type="button"
                    class="btn-order-new btn btn-large hmarg30right">« Create New Order</button>
            <a autocomplete="off" href="#tab=orders" class="btn btn-primary btn-large"><i
                class="icon-list icon-white"></i> View Orders</a>
          </div>
        </div>
      </div>

      <form class="form-horizontal large form-control-left">
        <div class="row">
          <div class="span12 order-error-review-wrap vmarg10bot">
            <div class="order-error-review vpad10 vmarg0 alert alert-block alert-error center hidden2"></div>
          </div>
        </div>

        <div class="otp-wrap hidden2">
          <div class="row">
            <div class="span8 offset3">
              <div class="control-group">
                <label class="control-label ralign">One-time Password</label>

                <div class="controls">
                  <input type="password" disabled="disabled" name="otp" class="input-large" autocomplete="off" value="">

                  <p class="control-hint">Enter the one-time password required by two-factor authentication.</p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="order-buttons">
          <div class="center btn-toolbar">
            <button autocomplete="off" type="button" class="btn-order-back btn btn-large hmarg30right">« Back</button>
            <button autocomplete="off" type="submit" class="btn-order-confirm btn btn-success btn-large"><i
                class="icon-ok icon-white"></i> Submit Order</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
</div>
</div>