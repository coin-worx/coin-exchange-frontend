<div class="tab-pane" id="new-order">
<div id="order-form-nav">
  <ul class="nav nav-pills spaced20 mini dark vmarg30bot">
    <li class="active">
      <a href="#order-simple" data-toggle="tab">Simple</a>
    </li>
    <li class="">
      <a href="#order-int" data-toggle="tab">Intermediate</a>
    </li>
    <li class="">
      <a href="#order-adv" data-toggle="tab">Advanced</a>
    </li>
  </ul>
</div>

<div class="tab-content">
<div id="order-simple" class="slider vmarg20top tab-pane active">
  <div class="transfer" style="width: 1900px;">
    <div class="frame" style="width: 950px;">
      <form class="form-order form-order-simple jq-validate-form vmarg5top" method="post" autocomplete="off"
            novalidate="novalidate">
        <fieldset>
          <div class="ib hmarg20right">
            <div class="ib btn-group top" data-toggle="buttons-radio" name="type">
              <button type="button" value="buy" class="btn btn-success active" autocomplete="off">Buy</button><button
                type="button" value="sell" class="btn" autocomplete="off">Sell</button>
            </div>
          </div>

          <div class="ib control-group">
            <div class="input-append">
              <input placeholder="Amount" tabindex="1" type="text" autocomplete="off"
                     class="input-medium ralign hmarg0right" value="" name="volume">

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

          <div class="ib symbol calc-op-symbol">×</div>

          <div class="ib control-group">
            <div class="ib">
              <div class="input-append">
                <input type="text" placeholder="Price" tabindex="2" class="input-small ralign hmarg0right" value=""
                       name="price" autocomplete="off"><span class="add-on">XRP</span>
              </div>
            </div>

            <div class="ib ordertype-wrap">
              <div class="btn-group" data-toggle="buttons-radio" name="ordertype">
                <button type="button" class="btn btn-small" value="market" autocomplete="off">Market</button><button
                  type="button" class="btn btn-small active" value="limit" autocomplete="off">Limit</button>
              </div>
            </div>

            <p class="control-hint" name="ordertype-hint">Buy at a fixed price per XBT.</p>
          </div>

          <div class="ib symbol">=</div>

          <div class="ib control-group">
            <div class="input-append">
              <input placeholder="Total" type="text" tabindex="3" autocomplete="off"
                     class="input-medium ralign hmarg0right" value="" name="total"><span class="add-on">XRP</span>
            </div>

            <p class="control-hint" name="total-hint">Estimated amount of XRP to spend.</p>
          </div>

          <div class="vmarg20top">
            <div class="alert alert-block alert-error hidden2 error-grouped" style="display: none;"></div>
          </div>

          <div class="buttons center vmarg10">
            <button tabindex="4" autocomplete="off" type="button"
                    class="btn-order-review btn btn-success btn-large submit">
              <span>Buy XBT with XRP</span>
              »
            </button>
          </div>
        </fieldset>
      </form>
    </div>

    <div class="frame review-wrap vmarg40bot" style="width: 950px; visibility: hidden;">
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
                      <input type="password" disabled="disabled" name="otp" class="input-large" autocomplete="off"
                             value="">

                      <p class="control-hint">Enter the one-time password required by two-factor authentication.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="order-buttons">
              <div class="center btn-toolbar">
                <button autocomplete="off" type="button"
                        class="btn-order-back btn btn-large hmarg30right">« Back</button>
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

<div id="order-int" class="slider vmarg20top tab-pane ">
<div class="transfer" style="width: 1900px;">
<div class="frame" style="width: 950px;">
<div class="vpad10 alert alert-block alert-error hidden2 error-grouped" style="display: none;"></div>

<form class="form-order form-horizontal form-control-left jq-validate-form no-left-margin compact" method="post"
      autocomplete="off" novalidate="novalidate">
<fieldset>
<div class="row">
<div class="span6">
<div class="control-group">
  <label class="control-label">Order</label>

  <div class="controls ">
    <div class="ib">
      <div class="ib btn-group" data-toggle="buttons-radio" name="type">
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
  <label class="control-label">Amount</label>

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

<div class="control-group">
  <label class="control-label">Order Type</label>

  <div class="controls">
    <div class="ib">
      <div class="input-append hmarg10right">
        <input type="text" class="span2 ralign hmarg0right" value="" name="price" autocomplete="off"><span
          class="add-on">XRP</span>
      </div>

      <div class="btn-group ib" data-toggle="buttons-radio" name="ordertype">
        <button type="button" class="btn btn-small" value="market" autocomplete="off">Market</button><button
          type="button" class="btn btn-small active" value="limit" autocomplete="off">Limit</button>
      </div>

      <p class="control-hint" name="ordertype-hint">Buy at a fixed price per XBT.</p>
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
        <div class="ib">
          <select name="start" class="input-large" autocomplete="off"><option value="">Now</option><option
              value="custom">Custom...</option></select>

          <div class="custom-start-wrap hidden2 vmarg20top">
            <div class="startdate-wrap ib input-append date hmarg5right" data-date-format="mm-dd-yy">
              <input name="startdate" autocomplete="off" readonly="readonly" class="input-smaller hmarg0right"
                     type="text" default="05-09-14" value="05-09-14"><span class="add-on"><i class="icon-calendar"></i>
            </span>
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
    </div>

    <div class="control-group">
      <label class="control-label">Expires</label>

      <div class="controls">
        <div class="ib">
          <select name="expire" class="input-large" autocomplete="off"><option
              value="gtc">Good until cancelled</option><option value="gtd">Good this day</option><option
              value="gtw">Good this week</option><option value="gtm">Good this month</option><option
              value="custom">Custom...</option></select>

          <div class="custom-expire-wrap hidden2 vmarg20top">
            <div class="expiredate-wrap ib input-append date hmarg5right" data-date-format="mm-dd-yy">
              <input name="expiredate" autocomplete="off" readonly="readonly" class="input-smaller hmarg0right"
                     type="text" default="05-09-14" value="05-09-14"><span class="add-on"><i class="icon-calendar"></i>
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

<div class="row vpad20top">
  <div class="center">
    <button autocomplete="off" type="button" class="btn-order-review btn submit btn-success btn-large">
      <span>Buy XBT with XRP</span>
      »</button>
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
                   default="05-09-14" value="05-09-14"><span class="add-on"><i class="icon-calendar"></i></span>
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
                   type="text" default="05-09-14" value="05-09-14"><span class="add-on"><i class="icon-calendar"></i>
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
</div>

<div id="order-data-wrap" class="hmarg20top">
<div class="clearfix">
  <ul class="nav nav-tabs spaced10" id="order-data-nav">
    <li class="active"><a href="#order-open-order" data-toggle="tab">New &amp; Open Orders</a></li>
    <li><a href="#order-position" data-toggle="tab">Positions</a></li>
    <li><a href="#order-market-data" data-toggle="tab">Order Book</a></li>
  </ul>
</div>

<div class="tab-content">
<div class="tab-pane active" id="order-open-order">
  <div class="vpad10 alert alert-block alert-error hidden2"></div>

  <div id="DataTables_Table_4_wrapper" class="dataTables_wrapper form-inline" role="grid"><div class="row"><div
      class="span4"></div>

    <div class="span4 offset1"></div>

    <div id="DataTables_Table_4_processing" class="dataTables_processing" style="visibility: hidden;">Loading...</div>
  </div><table class="table table-hover table-striped dataTable" id="DataTables_Table_4"
               aria-describedby="DataTables_Table_4_info">
    <thead>
    <tr role="row"><th class="lalign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_4"
                       rowspan="1" colspan="1" aria-label="Order: activate to sort column ascending"
                       style="width: 55px;">Order</th><th class="lalign nw sorting" role="columnheader" tabindex="0"
                                                          aria-controls="DataTables_Table_4" rowspan="1" colspan="1"
                                                          aria-label="Order Type: activate to sort column ascending"
                                                          style="width: 165px;">Order Type</th><th
        class="lalign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_4" rowspan="1"
        colspan="1" aria-label="Pair: activate to sort column ascending" style="width: 50px;">Pair</th><th
        class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_4" rowspan="1"
        colspan="1" aria-label="Price: activate to sort column ascending" style="width: 80px;">Price</th><th
        class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_4" rowspan="1"
        colspan="1" aria-label="Volume Rem.: activate to sort column ascending"
        style="width: 115px;">Volume Rem.</th><th class="ralign sorting" role="columnheader" tabindex="0"
                                                  aria-controls="DataTables_Table_4" rowspan="1" colspan="1"
                                                  aria-label="Cost Rem.: activate to sort column ascending"
                                                  style="width: 115px;">Cost Rem.</th><th class="lalign sorting"
                                                                                          role="columnheader"
                                                                                          tabindex="0"
                                                                                          aria-controls="DataTables_Table_4"
                                                                                          rowspan="1" colspan="1"
                                                                                          aria-label="Status: activate to sort column ascending"
                                                                                          style="width: 65px;">Status</th><th
        class="lalign nw sorting_desc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_4" rowspan="1"
        colspan="1" aria-sort="descending" aria-label="Opened: activate to sort column ascending"
        style="width: 160px;">Opened</th><th class="ralign sorting_disabled center" role="columnheader" rowspan="1"
                                             colspan="1" aria-label="&amp;nbsp;" style="width: 35px;">&nbsp;</th></tr>
    </thead>

    <tfoot>
    <tr><th class="nw" rowspan="1" colspan="1"></th><th class="nw" rowspan="1" colspan="1"></th><th class="lalign"
                                                                                                    rowspan="1"
                                                                                                    colspan="1"></th><th
        class="nw ralign" rowspan="1" colspan="1"></th><th class="ralign" rowspan="1" colspan="1"></th><th
        class="ralign" rowspan="1" colspan="1"></th><th rowspan="1" colspan="1"></th><th class="nw" rowspan="1"
                                                                                         colspan="1"></th><th
        class="center" rowspan="1" colspan="1"></th></tr>
    </tfoot>
    <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td valign="top" colspan="9"
                                                                                   class="dataTables_empty">No orders currently available.</td>
    </tr></tbody></table>

    <div class="row"><div class="span3"><div class="dataTables_info" id="DataTables_Table_4_info"></div></div>

      <div class="span5 offset1"></div></div></div>
</div>

<div class="tab-pane" id="order-position">
<div class="slider position-wrap">
<div class="transfer" style="width: 4750px;">
<div class="frame" style="width: 950px;">
  <div class="vpad10 alert alert-block alert-error hidden2" style="display: none;"></div>

  <div class="vmarg40bot">
    <div id="DataTables_Table_7_wrapper" class="dataTables_wrapper form-inline" role="grid"><div
        class="dataTables_table_wrapper"><table
          class="table table-hover table-striped table-trades table-position-open dataTable table-drilldown"
          id="DataTables_Table_7" aria-describedby="DataTables_Table_7_info">
        <thead>
        <tr role="row"><th class="center sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label=""
                           style="width: 25px;"></th><th class="lalign nw sorting" role="columnheader" tabindex="0"
                                                         aria-controls="DataTables_Table_7" rowspan="1" colspan="1"
                                                         aria-label="Order: activate to sort column ascending"
                                                         style="width: 55px;">Order</th><th class="lalign sorting"
                                                                                            role="columnheader"
                                                                                            tabindex="0"
                                                                                            aria-controls="DataTables_Table_7"
                                                                                            rowspan="1" colspan="1"
                                                                                            aria-label="Order Type: activate to sort column ascending">Order Type</th><th
            class="lalign sorting_desc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_7" rowspan="1"
            colspan="1" aria-sort="descending" aria-label="Pair: activate to sort column ascending"
            style="width: 60px;">Pair</th><th class="ralign nw sorting" role="columnheader" tabindex="0"
                                              aria-controls="DataTables_Table_7" rowspan="1" colspan="1"
                                              aria-label="Avg. Price: activate to sort column ascending"
                                              style="width: 80px;">Avg. Price</th><th class="ralign nw sorting"
                                                                                      role="columnheader" tabindex="0"
                                                                                      aria-controls="DataTables_Table_7"
                                                                                      rowspan="1" colspan="1"
                                                                                      aria-label="Open Volume: activate to sort column ascending"
                                                                                      style="width: 100px;">Open Volume</th><th
            class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_7" rowspan="1"
            colspan="1" aria-label="Cost: activate to sort column ascending" style="width: 80px;">Cost</th><th
            class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_7" rowspan="1"
            colspan="1" aria-label="Leverage: activate to sort column ascending" style="width: 65px;">Leverage</th><th
            class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_7" rowspan="1"
            colspan="1" aria-label="P/L: activate to sort column ascending">P/L</th><th class="ralign nw sorting"
                                                                                        role="columnheader" tabindex="0"
                                                                                        aria-controls="DataTables_Table_7"
                                                                                        rowspan="1" colspan="1"
                                                                                        aria-label="P/L (%): activate to sort column ascending"
                                                                                        style="width: 60px;">P/L (%)</th><th
            class="ralign sorting_disabled center" role="columnheader" rowspan="1" colspan="1" aria-label="&amp;nbsp;"
            style="width: 25px;">&nbsp;</th></tr>
        </thead>

        <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td valign="top" colspan="11"
                                                                                       class="dataTables_empty">No open positions currently available.</td>
        </tr></tbody></table></div>

      <div><div class="pull-left"><div class="dataTables_info" id="DataTables_Table_7_info"></div></div>

        <div class="pull-right"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li class="disabled"><a
            href="javascript: void(0);">‹</a></li><li class="disabled"><a href="javascript: void(0);">›</a></li></ul>
        </div></div>

        <div class="clearfix"></div></div></div>
  </div>
</div>

<div class="frame" style="width: 950px; visibility: hidden;">
<div class="position-detail-wrap hidden2">
<div class="vmarg10bot">
<div class="clearfix header">
  <h4 class="title pull-left" name="title"></h4>
  <span class="title-hint position-data-trigger pull-left"><span>Hide details</span> <b class="caret up"></b></span>

  <div class="pull-right">
    <button class="btn btn-small back">« Back</button>
  </div>
</div>

<div class="vpad10 vmarg10top alert alert-block alert-error hidden2 position-detail-error">
</div>

<div class="position-data-wrap vpad20top">
  <ul class="nav nav-tabs spaced10" id="position-grouped-data-nav-order">
    <li class="active"><a href="#position-grouped-data-overview-order" data-toggle="tab">Overview</a></li>
    <li><a href="#position-grouped-data-trades-order" data-toggle="tab">Trade Positions</a></li>
    <li><a href="#position-grouped-data-closing-order" data-toggle="tab">Closing Orders</a></li>
  </ul>

  <div class="tab-content vpad10top">
    <div class="tab-pane active" id="position-grouped-data-overview-order">
      <div class="row stats-dots-wrap">
        <div class="span6">
          <div class="hpad20right">
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Initial Cost</td>
                <td class="dots"></td>
                <td class="ralign mono" name="cost"></td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">Cost of the position's initial trade.</td>

              </tr></tbody></table>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Closing Cost</td>
                <td class="dots"></td>
                <td class="ralign mono" name="tcost"></td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">Total cost of closing this position.</td>

              </tr></tbody></table>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Margin Cost</td>
                <td class="dots"></td>
                <td class="ralign mono" name="margin"></td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">&nbsp;</td>

              </tr></tbody></table>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Profit/Loss</td>
                <td class="dots"></td>
                <td class="ralign mono" name="net"></td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">&nbsp;</td>

              </tr></tbody></table>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Profit/Loss</td>
                <td class="dots"></td>
                <td class="ralign mono" name="net-pct"></td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">&nbsp;</td>

              </tr></tbody></table>
          </div>
        </div>

        <div class="span6">
          <div class="hpad20left">
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Avg. Price</td>
                <td class="dots"></td>
                <td class="ralign mono" name="tprice"></td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">Average price of opening trades.</td>

              </tr></tbody></table>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Total Trade Fees</td>
                <td class="dots"></td>
                <td class="ralign mono" name="tfee"></td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">Total of opening and closing fees.</td>

              </tr></tbody></table>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Closed</td>
                <td class="dots"></td>
                <td class="ralign" name="posclosetime"></td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">Date/time of final trade that closed this position.</td>

              </tr></tbody></table>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Order</td>
                <td class="dots"></td>
                <td class="ralign" name="ordertxid"></td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">&nbsp;</td>

              </tr></tbody></table>
            <table class="stats-dots">
              <tbody><tr>
                <td class="k">Position Status</td>
                <td class="dots"></td>
                <td class="ralign" name="posstatus"></td>
              </tr>
              <tr>
                <td colspan="3" class="control-hint ralign">&nbsp;</td>

              </tr></tbody></table>
          </div>
        </div>
      </div>
    </div>

    <div class="tab-pane" id="position-grouped-data-trades-order">
      <div class="vmarg20bot">
        <div class="hidden2">
          <table class="table table-hover table-striped table-trades table-position-open dataTable table-drilldown">
            <thead>
            <tr>
              <th class="hidden2"></th>
              <th class="hidden2"></th>
              <th class="hidden2"></th>
              <th class="hidden2"></th>
              <th class="hidden2"></th>
              <th class="lalign">Trade</th>
              <th class="lalign">Order Type</th>
              <th class="lalign">Pair</th>
              <th class="ralign">Avg. Price</th>
              <th class="ralign">Open Volume</th>
              <th class="ralign">Cost</th>
              <th class="ralign">Leverage</th>
              <th class="ralign">P/L</th>
              <th class="ralign">P/L (%)</th>
              <th class="ralign">&nbsp;</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
          </table>
        </div>

        <div class="hidden2">
          <table class="table table-hover table-striped table-trades table-position-hist dataTable table-drilldown">
            <thead>
            <tr>
              <th class="hidden2"></th>
              <th class="hidden2"></th>
              <th class="hidden2"></th>
              <th class="hidden2"></th>
              <th class="hidden2"></th>
              <th class="lalign">Trade</th>
              <th class="lalign">Order Type</th>
              <th class="lalign">Pair</th>
              <th class="ralign">Avg. Price</th>
              <th class="ralign">Closing Cost</th>
              <th class="ralign">P/L</th>
              <th class="ralign">P/L (%)</th>
              <th class="ralign">Closed</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
          </table>
        </div>
      </div>
    </div>

    <div class="tab-pane" id="position-grouped-data-closing-order">
      <table class="table table-hover table-striped table-orderlist-closed dataTable">
        <thead>
        <tr>
          <th class="hidden2"></th>
          <th class="hidden2"></th>
          <th class="hidden2"></th>
          <th class="lalign">Order</th>
          <th class="lalign">Order Type</th>
          <th class="lalign">Pair</th>
          <th class="ralign">Price</th>
          <th class="ralign">Volume Exec'd</th>
          <th class="ralign">Cost</th>
          <th class="lalign">Status</th>
          <th class="lalign">Closed</th>
        </tr>
        </thead>
        <tbody>
        </tbody>
      </table>
    </div>
  </div>
</div>
</div>

<form class="form-order form-horizontal form-control-left jq-validate-form no-left-margin compact" method="post"
      novalidate="novalidate">
<h5 class="title underline vmarg0top vpad10top"><span class="title">Close Position</span></h5>

<div class="vpad10 alert alert-block alert-error hidden2 error-grouped">
</div>

<div class="vpad10top">
<fieldset>
<div class="row">
<div class="span6">
  <div class="control-group">
    <label class="control-label">Order</label>

    <div class="controls">
      <div name="type" value=""></div>
    </div>
  </div>

  <div class="control-group">
    <label class="control-label">Currency Pair</label>

    <div class="controls">
      <p class="readonly" name="asset" value=""></p>
    </div>
  </div>

  <div class="control-group">
    <label class="control-label">Volume</label>

    <div class="controls">
      <div class="input-append">
        <input type="text" autocomplete="off" class="input-medium ralign hmarg0right" value="" name="volume">

        <div class="ib posrel"><div class="dropdown"><a href="#" title="" data-value=""
                                                        class="btn add-on volume-currency-toggle rounded dropdown-toggle tt"
                                                        data-toggle="dropdown"
                                                        data-original-title="Click to switch amount currency."><span
              class="caret"></span></a>
          <ul class="dropdown-menu small">
            <li data-value="" data-display="" class="disabled">
              <a href="#"></a>
            </li>
            <li data-value="" data-display="" class="disabled">
              <a href="#"></a>
            </li>
          </ul>
        </div>
        </div>
      </div>

      <p class="control-hint">&nbsp;</p>
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

        <p class="control-hint ordertype-hint">Sell at a fixed price per .</p>
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
                                                                                                value="fixed"
                                                                                                title=""
                                                                                                autocomplete="off"
                                                                                                data-original-title="Static, non-relative price">=</button><button
                type="button" class="btn btn-mini tt pricetype" value="minus" title="" autocomplete="off"
                data-original-title="Negative offset from market price">-</button>
            </div>
          </div>

          <div class="ib hmarg5right">
            <div class="input-append">
              <input type="text" class="span2 ralign hmarg0 price" value="" name="price"
                     autocomplete="off"><span class="add-on">XRP</span>
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
                      autocomplete="off"
                      data-original-title="Positive offset from market price">+</button><button type="button"
                                                                                                class="btn btn-mini tt price2type"
                                                                                                value="fixed"
                                                                                                disabled="disabled"
                                                                                                title=""
                                                                                                autocomplete="off"
                                                                                                data-original-title="Static, non-relative price">=</button><button
                type="button" class="btn btn-mini tt price2type" value="minus" disabled="disabled" title=""
                autocomplete="off" data-original-title="Negative offset from market price">-</button>
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
        <input type="text" tabindex="3" autocomplete="off" class="span2 ralign hmarg0right" value=""
               name="total"><span class="add-on">XRP</span>
      </div>

      <p class="control-hint" name="total-hint">Estimated amount of XRP to spend.</p>
    </div>
  </div>
</div>

<div class="span6">
  <div class="control-group">
    <label class="control-label">Volume Closed</label>

    <div class="controls">
      <span class="readonly mono" name="volclosed"></span>

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
          <input name="startdate" autocomplete="off" readonly="readonly" class="input-smaller hmarg0right"
                 type="text" default="05-09-14" value="05-09-14"><span class="add-on"><i
            class="icon-calendar"></i></span>
        </div>

        <div class="ib input-append bootstrap-timepicker-component">
          <input name="starttime" autocomplete="off" readonly="readonly"
                 class="timepicker-default input-smaller hmarg0right" type="text" value=""><span
            class="add-on"><i class="icon-time"></i></span>
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
                 type="text" default="05-09-14" value="05-09-14"><span class="add-on"><i
            class="icon-calendar"></i></span>
        </div>

        <div class="ib input-append bootstrap-timepicker-component">
          <input name="expiretime" autocomplete="off" readonly="readonly"
                 class="timepicker-default input-smaller hmarg0right" type="text" value=""><span
            class="add-on"><i class="icon-time"></i></span>
        </div>
        <a class="hpad10left smaller expirereset" href="javascript: void(0);">Reset</a>
      </div>

      <p class="control-hint">When this order should be canceled (if not filled).</p>
    </div>
  </div>

  <div class="control-group" name="currencypriority" style="display: none;">
    <label class="control-label">P/L/Fee Currency</label>

    <div class="controls">
      <div class="btn-group" data-toggle="buttons-radio">
        <button type="button" value="" class="btn" disabled="disabled" autocomplete="off"></button><button
          type="button" value="" class="btn" disabled="disabled" autocomplete="off"></button>
      </div>

      <p class="control-hint">Currency balance to apply profit/loss and fees to.
      </p></div>
  </div>
</div>
</div>

<div class="row vpad20top">
  <div class="center btn-toolbar">
    <button autocomplete="off" type="button" class="btn-order-cancel btn btn-danger btn-large hmarg20right"><i
        class="icon-remove icon-white"></i> Cancel</button>
    <button autocomplete="off" type="button"
            class="btn-order-review btn btn-success btn-large">Review Order »</button>
  </div>
</div>
</fieldset>
<input type="hidden" name="position" value="">
</div>
</form>
</div>
</div>

<div class="frame" style="width: 950px; visibility: hidden;">
<div class="position-detail-wrap hidden2">
<div class="vmarg10bot">
  <div class="clearfix header">
    <h4 class="title pull-left" name="title"></h4>
    <span class="title-hint position-data-trigger pull-left"><span>Hide details</span> <b class="caret up"></b></span>

    <div class="pull-right">
      <button class="btn btn-small back">« Back</button>
    </div>
  </div>

  <div class="vpad10 vmarg10top alert alert-block alert-error hidden2 position-detail-error">
  </div>

  <div class="position-data-wrap vpad20top">
    <div class="clearfix">
      <ul class="nav nav-tabs spaced10" id="position-data-nav-order">
        <li class="active"><a href="#position-data-overview-order" data-toggle="tab">Overview</a></li>
        <li><a href="#position-data-opening-order" data-toggle="tab">Opening Trade</a></li>
        <li><a href="#position-data-closing-order" data-toggle="tab">Closing Trades</a></li>
      </ul>
    </div>

    <div class="tab-content">
      <div class="tab-pane active" id="position-data-overview-order">
        <div class="row stats-dots-wrap">
          <div class="span6">
            <div class="hpad20right">
              <table class="stats-dots">
                <tbody><tr>
                  <td class="k">Initial Cost</td>
                  <td class="dots"></td>
                  <td class="ralign mono" name="cost"></td>
                </tr>
                <tr>
                  <td colspan="3" class="control-hint ralign">Cost of the position's initial trade.</td>

                </tr></tbody></table>
              <table class="stats-dots">
                <tbody><tr>
                  <td class="k">Closing Cost</td>
                  <td class="dots"></td>
                  <td class="ralign mono" name="tcost"></td>
                </tr>
                <tr>
                  <td colspan="3" class="control-hint ralign">Total cost of closing this position.</td>

                </tr></tbody></table>
              <table class="stats-dots">
                <tbody><tr>
                  <td class="k">Margin Cost</td>
                  <td class="dots"></td>
                  <td class="ralign mono" name="margin"></td>
                </tr>
                <tr>
                  <td colspan="3" class="control-hint ralign">&nbsp;</td>

                </tr></tbody></table>
              <table class="stats-dots">
                <tbody><tr>
                  <td class="k">Profit/Loss</td>
                  <td class="dots"></td>
                  <td class="ralign mono" name="net"></td>
                </tr>
                <tr>
                  <td colspan="3" class="control-hint ralign">&nbsp;</td>

                </tr></tbody></table>
              <table class="stats-dots">
                <tbody><tr>
                  <td class="k">Profit/Loss</td>
                  <td class="dots"></td>
                  <td class="ralign mono" name="net-pct"></td>
                </tr>
                <tr>
                  <td colspan="3" class="control-hint ralign">&nbsp;</td>

                </tr></tbody></table>
            </div>
          </div>

          <div class="span6">
            <div class="hpad20left">
              <table class="stats-dots">
                <tbody><tr>
                  <td class="k">Avg. Price</td>
                  <td class="dots"></td>
                  <td class="ralign mono" name="tprice"></td>
                </tr>
                <tr>
                  <td colspan="3" class="control-hint ralign">Average price of opening trades.</td>

                </tr></tbody></table>
              <table class="stats-dots">
                <tbody><tr>
                  <td class="k">Total Trade Fees</td>
                  <td class="dots"></td>
                  <td class="ralign mono" name="tfee"></td>
                </tr>
                <tr>
                  <td colspan="3" class="control-hint ralign">Total of opening and closing fees.</td>

                </tr></tbody></table>
              <table class="stats-dots">
                <tbody><tr>
                  <td class="k">Closed</td>
                  <td class="dots"></td>
                  <td class="ralign" name="posclosetime"></td>
                </tr>
                <tr>
                  <td colspan="3" class="control-hint ralign">Date/time of final trade that closed this position.</td>

                </tr></tbody></table>
              <table class="stats-dots">
                <tbody><tr>
                  <td class="k">Order</td>
                  <td class="dots"></td>
                  <td class="ralign" name="ordertxid"></td>
                </tr>
                <tr>
                  <td colspan="3" class="control-hint ralign">&nbsp;</td>

                </tr></tbody></table>
              <table class="stats-dots">
                <tbody><tr>
                  <td class="k">Position Status</td>
                  <td class="dots"></td>
                  <td class="ralign" name="posstatus"></td>
                </tr>
                <tr>
                  <td colspan="3" class="control-hint ralign">&nbsp;</td>

                </tr></tbody></table>
            </div>
          </div>
        </div>
      </div>

      <div class="tab-pane" id="position-data-opening-order">
        <div class="vmarg20bot">
          <div class="position-data-content">
          </div>
        </div>
      </div>

      <div class="tab-pane" id="position-data-closing-order">
        <div>
          <table class="table table-hover table-striped table-trades table-trades-basic dataTable">
            <thead>
            <tr>
              <th></th>
              <th></th>
              <th></th>
              <th></th>
              <th class="lalign">Transaction ID</th>
              <th class="lalign">Executed</th>
              <th class="lalign">Order Type</th>
              <th class="lalign">Pair</th>
              <th class="ralign">Price</th>
              <th class="ralign">Volume</th>
              <th class="ralign">Cost</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>

<form class="form-order form-horizontal form-control-left jq-validate-form no-left-margin compact" method="post"
      novalidate="novalidate">
<h5 class="title underline vmarg0top vpad10top"><span class="title">Close Position</span></h5>

<div class="vpad10 alert alert-block alert-error hidden2 error-grouped">
</div>

<div class="vpad10top">
<fieldset>
<div class="row">
<div class="span6">
  <div class="control-group">
    <label class="control-label">Order</label>

    <div class="controls">
      <div name="type" value=""></div>
    </div>
  </div>

  <div class="control-group">
    <label class="control-label">Currency Pair</label>

    <div class="controls">
      <p class="readonly" name="asset" value=""></p>
    </div>
  </div>

  <div class="control-group">
    <label class="control-label">Volume</label>

    <div class="controls">
      <div class="input-append">
        <input type="text" autocomplete="off" class="input-medium ralign hmarg0right" value="" name="volume">

        <div class="ib posrel"><div class="dropdown"><a href="#" title="" data-value=""
                                                        class="btn add-on volume-currency-toggle rounded dropdown-toggle tt"
                                                        data-toggle="dropdown"
                                                        data-original-title="Click to switch amount currency."><span
              class="caret"></span></a>
          <ul class="dropdown-menu small">
            <li data-value="" data-display="" class="disabled">
              <a href="#"></a>
            </li>
            <li data-value="" data-display="" class="disabled">
              <a href="#"></a>
            </li>
          </ul>
        </div>
        </div>
      </div>

      <p class="control-hint">&nbsp;</p>
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

        <p class="control-hint ordertype-hint">Sell at a fixed price per .</p>
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
                                                                                                value="fixed"
                                                                                                title=""
                                                                                                autocomplete="off"
                                                                                                data-original-title="Static, non-relative price">=</button><button
                type="button" class="btn btn-mini tt pricetype" value="minus" title="" autocomplete="off"
                data-original-title="Negative offset from market price">-</button>
            </div>
          </div>

          <div class="ib hmarg5right">
            <div class="input-append">
              <input type="text" class="span2 ralign hmarg0 price" value="" name="price"
                     autocomplete="off"><span class="add-on">XRP</span>
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
                      autocomplete="off"
                      data-original-title="Positive offset from market price">+</button><button type="button"
                                                                                                class="btn btn-mini tt price2type"
                                                                                                value="fixed"
                                                                                                disabled="disabled"
                                                                                                title=""
                                                                                                autocomplete="off"
                                                                                                data-original-title="Static, non-relative price">=</button><button
                type="button" class="btn btn-mini tt price2type" value="minus" disabled="disabled" title=""
                autocomplete="off" data-original-title="Negative offset from market price">-</button>
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
        <input type="text" tabindex="3" autocomplete="off" class="span2 ralign hmarg0right" value=""
               name="total"><span class="add-on">XRP</span>
      </div>

      <p class="control-hint" name="total-hint">Estimated amount of XRP to spend.</p>
    </div>
  </div>
</div>

<div class="span6">
  <div class="control-group">
    <label class="control-label">Volume Closed</label>

    <div class="controls">
      <span class="readonly mono" name="volclosed"></span>

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
          <input name="startdate" autocomplete="off" readonly="readonly" class="input-smaller hmarg0right"
                 type="text" default="05-09-14" value="05-09-14"><span class="add-on"><i
            class="icon-calendar"></i></span>
        </div>

        <div class="ib input-append bootstrap-timepicker-component">
          <input name="starttime" autocomplete="off" readonly="readonly"
                 class="timepicker-default input-smaller hmarg0right" type="text" value=""><span
            class="add-on"><i class="icon-time"></i></span>
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
                 type="text" default="05-09-14" value="05-09-14"><span class="add-on"><i
            class="icon-calendar"></i></span>
        </div>

        <div class="ib input-append bootstrap-timepicker-component">
          <input name="expiretime" autocomplete="off" readonly="readonly"
                 class="timepicker-default input-smaller hmarg0right" type="text" value=""><span
            class="add-on"><i class="icon-time"></i></span>
        </div>
        <a class="hpad10left smaller expirereset" href="javascript: void(0);">Reset</a>
      </div>

      <p class="control-hint">When this order should be canceled (if not filled).</p>
    </div>
  </div>

  <div class="control-group" name="currencypriority" style="display: none;">
    <label class="control-label">P/L/Fee Currency</label>

    <div class="controls">
      <div class="btn-group" data-toggle="buttons-radio">
        <button type="button" value="" class="btn" disabled="disabled" autocomplete="off"></button><button
          type="button" value="" class="btn" disabled="disabled" autocomplete="off"></button>
      </div>

      <p class="control-hint">Currency balance to apply profit/loss and fees to.
      </p></div>
  </div>
</div>
</div>

<div class="row vpad20top">
  <div class="center btn-toolbar">
    <button autocomplete="off" type="button" class="btn-order-cancel btn btn-danger btn-large hmarg20right"><i
        class="icon-remove icon-white"></i> Cancel</button>
    <button autocomplete="off" type="button"
            class="btn-order-review btn btn-success btn-large">Review Order »</button>
  </div>
</div>
</fieldset>
<input type="hidden" name="position" value="">
</div>
</form>
</div>
</div>

<div class="frame review-wrap vpad20top" style="width: 950px; visibility: hidden;">
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
                    class="btn-order-new btn btn-large hmarg30right">« Back To Positions</button>
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

<div class="frame review-wrap vpad20top" style="width: 950px; visibility: hidden;">
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
                    class="btn-order-new btn btn-large hmarg30right">« Back To Positions</button>
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
</div>

<div class="tab-pane" id="order-market-data">
  <div class="vpad10 alert alert-block alert-error hidden2" style="display: none;"></div>

  <div class="row clearfix table-ob-wrap deluxe">
    <div class="span6">
      <div>
        <h5 class="center vmarg0top">Buying</h5>

        <div id="DataTables_Table_11_wrapper" class="dataTables_wrapper form-inline" role="grid"><table
            class="table table-hover table-striped dataTable" name="table-bids" id="DataTables_Table_11">
          <thead>
          <tr role="row"><th class="ralign nw sorting" role="columnheader" tabindex="0"
                             aria-controls="DataTables_Table_11" rowspan="1" colspan="1"
                             aria-label="Cm. Vol.: activate to sort column ascending"
                             style="width: 0px;">Cm. Vol.</th><th class="ralign nw sorting" role="columnheader"
                                                                  tabindex="0" aria-controls="DataTables_Table_11"
                                                                  rowspan="1" colspan="1"
                                                                  aria-label="Cm. Cost: activate to sort column ascending"
                                                                  style="width: 0px;">Cm. Cost</th><th
              class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_11" rowspan="1"
              colspan="1" aria-label="Cost: activate to sort column ascending" style="width: 0px;">Cost</th><th
              class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_11" rowspan="1"
              colspan="1" aria-label="Volume: activate to sort column ascending" style="width: 0px;">Volume</th><th
              class="ralign nw sorting_desc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_11"
              rowspan="1" colspan="1" aria-sort="descending" aria-label="Price: activate to sort column ascending"
              style="width: 0px;">Price</th></tr>
          </thead>

          <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td class="ralign nw"
                                                                                         sort="0.125">0.125</td><td
              class="ralign nw" sort="8781.250">Ʀ8,781.25<span class="deczeros">0</span></td><td class="ralign nw"
                                                                                                 sort="8781.250">Ʀ8,781.25<span
                class="deczeros">0</span></td><td class="ralign nw" sort="0.125">0.125</td><td class="ralign nw"
                                                                                               sort="70250.000">Ʀ70,250.0<span
                class="deczeros">00</span></td></tr><tr class="even"><td class="ralign nw" sort="0.250">0.25<span
              class="deczeros">0</span></td><td class="ralign nw" sort="17543.750">Ʀ17,543.75<span
              class="deczeros">0</span></td><td class="ralign nw" sort="8762.500">Ʀ8,762.5<span
              class="deczeros">00</span></td><td class="ralign nw" sort="0.125">0.125</td><td class="ralign nw"
                                                                                              sort="70100.002">Ʀ70,100.002</td>
          </tr><tr class="odd"><td class="ralign nw" sort="0.400">0.4<span class="deczeros">00</span></td><td
              class="ralign nw" sort="27833.750">Ʀ27,833.75<span class="deczeros">0</span></td><td class="ralign nw"
                                                                                                   sort="10290.000">Ʀ10,290.0<span
                class="deczeros">00</span></td><td class="ralign nw" sort="0.150">0.15<span class="deczeros">0</span>
          </td><td class="ralign nw" sort="68600.000">Ʀ68,600.0<span class="deczeros">00</span></td></tr><tr
              class="even"><td class="ralign nw" sort="1.400">1.4<span class="deczeros">00</span></td><td
                class="ralign nw" sort="95833.750">Ʀ95,833.75<span class="deczeros">0</span></td><td class="ralign nw"
                                                                                                     sort="68000.000">Ʀ68,000.0<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="1.000">1.0<span class="deczeros">00</span>
            </td><td class="ralign nw" sort="68000.000">Ʀ68,000.0<span class="deczeros">00</span></td></tr><tr
              class="odd"><td class="ralign nw" sort="1.411">1.411</td><td class="ralign nw"
                                                                           sort="96572.092">Ʀ96,572.092</td><td
                class="ralign nw" sort="738.342">Ʀ738.342</td><td class="ralign nw" sort="0.011">0.011</td><td
                class="ralign nw" sort="67122.000">Ʀ67,122.0<span class="deczeros">00</span></td></tr><tr
              class="even"><td class="ralign nw" sort="1.461">1.461</td><td class="ralign nw"
                                                                            sort="99927.092">Ʀ99,927.092</td><td
                class="ralign nw" sort="3355.000">Ʀ3,355.0<span class="deczeros">00</span></td><td class="ralign nw"
                                                                                                   sort="0.050">0.05<span
                  class="deczeros">0</span></td><td class="ralign nw" sort="67100.001">Ʀ67,100.001</td></tr><tr
              class="odd"><td class="ralign nw" sort="1.661">1.661</td><td class="ralign nw"
                                                                           sort="113347.092">Ʀ113,347.092</td><td
                class="ralign nw" sort="13420.000">Ʀ13,420.0<span class="deczeros">00</span></td><td class="ralign nw"
                                                                                                     sort="0.200">0.2<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="67100.000">Ʀ67,100.0<span
                class="deczeros">00</span></td></tr><tr class="even"><td class="ralign nw" sort="1.711">1.711</td><td
              class="ralign nw" sort="116652.092">Ʀ116,652.092</td><td class="ralign nw" sort="3305.000">Ʀ3,305.0<span
              class="deczeros">00</span></td><td class="ralign nw" sort="0.050">0.05<span class="deczeros">0</span>
          </td><td class="ralign nw" sort="66100.001">Ʀ66,100.001</td></tr><tr class="odd"><td class="ralign nw"
                                                                                               sort="2.211">2.211</td><td
              class="ralign nw" sort="149702.092">Ʀ149,702.092</td><td class="ralign nw" sort="33050.000">Ʀ33,050.0<span
              class="deczeros">00</span></td><td class="ralign nw" sort="0.500">0.5<span class="deczeros">00</span>
          </td><td class="ralign nw" sort="66100.000">Ʀ66,100.0<span class="deczeros">00</span></td></tr><tr
              class="even"><td class="ralign nw" sort="2.261">2.261</td><td class="ralign nw"
                                                                            sort="152907.092">Ʀ152,907.092</td><td
                class="ralign nw" sort="3205.000">Ʀ3,205.0<span class="deczeros">00</span></td><td class="ralign nw"
                                                                                                   sort="0.050">0.05<span
                  class="deczeros">0</span></td><td class="ralign nw" sort="64100.001">Ʀ64,100.001</td></tr></tbody>
        </table>

          <div><div class="center"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li
              class="disabled"><a href="javascript: void(0);">‹</a></li><li class="active"><a
              href="javascript: void(0);">1</a></li><li><a href="javascript: void(0);">2</a></li><li><a
              href="javascript: void(0);">3</a></li><li><a href="javascript: void(0);">4</a></li><li><a
              href="javascript: void(0);">5</a></li><li class="dummy"><a href="javascript: void(0);">…</a></li><li><a
              href="javascript: void(0);">10</a></li><li><a href="javascript: void(0);">›</a></li></ul></div></div>

            <div class="clearfix"></div></div></div>
      </div>
    </div>

    <div class="span6 xtrawide last">
      <div>
        <h5 class="center vmarg0top">Selling</h5>

        <div id="DataTables_Table_10_wrapper" class="dataTables_wrapper form-inline" role="grid"><div
            class="dataTables_table_wrapper" style="min-height: 2px;"><table
              class="table table-hover table-striped dataTable" name="table-asks" id="DataTables_Table_10">
            <thead>
            <tr role="row"><th class="ralign nw sorting_asc" role="columnheader" tabindex="0"
                               aria-controls="DataTables_Table_10" rowspan="1" colspan="1" aria-sort="ascending"
                               aria-label="Price: activate to sort column descending" style="width: 0px;">Price</th><th
                class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_10"
                rowspan="1" colspan="1" aria-label="Volume: activate to sort column ascending"
                style="width: 0px;">Volume</th><th class="ralign nw sorting" role="columnheader" tabindex="0"
                                                   aria-controls="DataTables_Table_10" rowspan="1" colspan="1"
                                                   aria-label="Cost: activate to sort column ascending"
                                                   style="width: 0px;">Cost</th><th class="ralign nw sorting"
                                                                                    role="columnheader" tabindex="0"
                                                                                    aria-controls="DataTables_Table_10"
                                                                                    rowspan="1" colspan="1"
                                                                                    aria-label="Cm. Cost: activate to sort column ascending"
                                                                                    style="width: 0px;">Cm. Cost</th><th
                class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_10"
                rowspan="1" colspan="1" aria-label="Cm. Vol.: activate to sort column ascending"
                style="width: 0px;">Cm. Vol.</th></tr>
            </thead>

            <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td class="ralign nw"
                                                                                           sort="73999.999">Ʀ73,999.999</td><td
                class="ralign nw" sort="0.058">0.058</td><td class="ralign nw" sort="4291.999">Ʀ4,291.999</td><td
                class="ralign nw" sort="4291.999">Ʀ4,291.999</td><td class="ralign nw" sort="0.058">0.058</td></tr><tr
                class="even"><td class="ralign nw" sort="74000.000">Ʀ74,000.0<span class="deczeros">00</span></td><td
                  class="ralign nw" sort="0.100">0.1<span class="deczeros">00</span></td><td class="ralign nw"
                                                                                             sort="7400.000">Ʀ7,400.0<span
                    class="deczeros">00</span></td><td class="ralign nw" sort="11691.999">Ʀ11,691.999</td><td
                  class="ralign nw" sort="0.158">0.158</td></tr><tr class="odd"><td class="ralign nw"
                                                                                    sort="78000.000">Ʀ78,000.0<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="0.027">0.027</td><td class="ralign nw"
                                                                                                  sort="2106.000">Ʀ2,106.0<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="13797.999">Ʀ13,797.999</td><td
                class="ralign nw" sort="0.185">0.185</td></tr><tr class="even"><td class="ralign nw"
                                                                                   sort="78600.000">Ʀ78,600.0<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="0.050">0.05<span class="deczeros">0</span>
            </td><td class="ralign nw" sort="3930.000">Ʀ3,930.0<span class="deczeros">00</span></td><td
                class="ralign nw" sort="17727.999">Ʀ17,727.999</td><td class="ralign nw" sort="0.235">0.235</td></tr><tr
                class="odd"><td class="ralign nw" sort="78800.189">Ʀ78,800.189</td><td class="ralign nw"
                                                                                       sort="0.945">0.945</td><td
                  class="ralign nw" sort="74466.178">Ʀ74,466.178</td><td class="ralign nw"
                                                                         sort="92194.177">Ʀ92,194.177</td><td
                  class="ralign nw" sort="1.180">1.18<span class="deczeros">0</span></td></tr><tr class="even"><td
                class="ralign nw" sort="80999.999">Ʀ80,999.999</td><td class="ralign nw" sort="0.050">0.05<span
                class="deczeros">0</span></td><td class="ralign nw" sort="4049.999">Ʀ4,049.999</td><td class="ralign nw"
                                                                                                       sort="96244.176">Ʀ96,244.176</td><td
                class="ralign nw" sort="1.230">1.23<span class="deczeros">0</span></td></tr><tr class="odd"><td
                class="ralign nw" sort="81000.000">Ʀ81,000.0<span class="deczeros">00</span></td><td class="ralign nw"
                                                                                                     sort="0.100">0.1<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="8100.000">Ʀ8,100.0<span
                class="deczeros">00</span></td><td class="ralign nw" sort="104344.176">Ʀ104,344.176</td><td
                class="ralign nw" sort="1.330">1.33<span class="deczeros">0</span></td></tr><tr class="even"><td
                class="ralign nw" sort="85999.999">Ʀ85,999.999</td><td class="ralign nw" sort="0.050">0.05<span
                class="deczeros">0</span></td><td class="ralign nw" sort="4299.999">Ʀ4,299.999</td><td class="ralign nw"
                                                                                                       sort="108644.175">Ʀ108,644.175</td><td
                class="ralign nw" sort="1.380">1.38<span class="deczeros">0</span></td></tr><tr class="odd"><td
                class="ralign nw" sort="86999.999">Ʀ86,999.999</td><td class="ralign nw" sort="0.050">0.05<span
                class="deczeros">0</span></td><td class="ralign nw" sort="4349.999">Ʀ4,349.999</td><td class="ralign nw"
                                                                                                       sort="112994.174">Ʀ112,994.174</td><td
                class="ralign nw" sort="1.430">1.43<span class="deczeros">0</span></td></tr><tr class="even"><td
                class="ralign nw" sort="87500.000">Ʀ87,500.0<span class="deczeros">00</span></td><td class="ralign nw"
                                                                                                     sort="0.200">0.2<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="17500.000">Ʀ17,500.0<span
                class="deczeros">00</span></td><td class="ralign nw" sort="130494.174">Ʀ130,494.174</td><td
                class="ralign nw" sort="1.630">1.63<span class="deczeros">0</span></td></tr></tbody></table></div>

          <div><div class="center"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li
              class="disabled"><a href="javascript: void(0);">‹</a></li><li class="active"><a
              href="javascript: void(0);">1</a></li><li><a href="javascript: void(0);">2</a></li><li><a
              href="javascript: void(0);">3</a></li><li><a href="javascript: void(0);">›</a></li></ul></div></div>

            <div class="clearfix"></div></div></div>
      </div>
    </div>
  </div>

  <div class="clearfix"></div>
</div>
</div>
</div>
</div>