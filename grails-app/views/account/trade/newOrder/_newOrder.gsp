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
                     type="text" default="05-19-14" value="05-19-14"><span class="add-on"><i class="icon-calendar"></i>
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
                     type="text" default="05-19-14" value="05-19-14"><span class="add-on"><i class="icon-calendar"></i>
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
                   default="05-19-14" value="05-19-14"><span class="add-on"><i class="icon-calendar"></i></span>
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
                   type="text" default="05-19-14" value="05-19-14"><span class="add-on"><i class="icon-calendar"></i>
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
    <li class="active">
      <a href="#order-open-order">New &amp; Open Orders</a>
    </li>
    <li>
      <a href="#order-position">Positions</a>
    </li>
    <li>
      <a href="#order-market-data">Order Book</a>
    </li>
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
                       rowspan="1" colspan="1" style="width: 55px;"
                       aria-label="Order: activate to sort column ascending">Order</th><th class="lalign nw sorting"
                                                                                           role="columnheader"
                                                                                           tabindex="0"
                                                                                           aria-controls="DataTables_Table_4"
                                                                                           rowspan="1" colspan="1"
                                                                                           style="width: 165px;"
                                                                                           aria-label="Order Type: activate to sort column ascending">Order Type</th><th
        class="lalign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_4" rowspan="1"
        colspan="1" style="width: 50px;" aria-label="Pair: activate to sort column ascending">Pair</th><th
        class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_4" rowspan="1"
        colspan="1" style="width: 80px;" aria-label="Price: activate to sort column ascending">Price</th><th
        class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_4" rowspan="1"
        colspan="1" style="width: 115px;"
        aria-label="Volume Rem.: activate to sort column ascending">Volume Rem.</th><th class="ralign sorting"
                                                                                        role="columnheader" tabindex="0"
                                                                                        aria-controls="DataTables_Table_4"
                                                                                        rowspan="1" colspan="1"
                                                                                        style="width: 115px;"
                                                                                        aria-label="Cost Rem.: activate to sort column ascending">Cost Rem.</th><th
        class="lalign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_4" rowspan="1"
        colspan="1" style="width: 65px;" aria-label="Status: activate to sort column ascending">Status</th><th
        class="lalign nw sorting_desc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_4" rowspan="1"
        colspan="1" style="width: 160px;" aria-sort="descending"
        aria-label="Opened: activate to sort column ascending">Opened</th><th class="ralign sorting_disabled center"
                                                                              role="columnheader" rowspan="1"
                                                                              colspan="1" style="width: 35px;"
                                                                              aria-label="&amp;nbsp;">&nbsp;</th></tr>
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
        <tr role="row"><th class="center sorting_disabled" role="columnheader" rowspan="1" colspan="1"
                           style="width: 25px;" aria-label=""></th><th class="lalign nw sorting" role="columnheader"
                                                                       tabindex="0" aria-controls="DataTables_Table_7"
                                                                       rowspan="1" colspan="1" style="width: 55px;"
                                                                       aria-label="Order: activate to sort column ascending">Order</th><th
            class="lalign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_7" rowspan="1"
            colspan="1" aria-label="Order Type: activate to sort column ascending">Order Type</th><th
            class="lalign sorting_desc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_7" rowspan="1"
            colspan="1" style="width: 60px;" aria-sort="descending"
            aria-label="Pair: activate to sort column ascending">Pair</th><th class="ralign nw sorting"
                                                                              role="columnheader" tabindex="0"
                                                                              aria-controls="DataTables_Table_7"
                                                                              rowspan="1" colspan="1"
                                                                              style="width: 80px;"
                                                                              aria-label="Avg. Price: activate to sort column ascending">Avg. Price</th><th
            class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_7" rowspan="1"
            colspan="1" style="width: 100px;"
            aria-label="Open Volume: activate to sort column ascending">Open Volume</th><th class="ralign nw sorting"
                                                                                            role="columnheader"
                                                                                            tabindex="0"
                                                                                            aria-controls="DataTables_Table_7"
                                                                                            rowspan="1" colspan="1"
                                                                                            style="width: 80px;"
                                                                                            aria-label="Cost: activate to sort column ascending">Cost</th><th
            class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_7" rowspan="1"
            colspan="1" style="width: 65px;" aria-label="Leverage: activate to sort column ascending">Leverage</th><th
            class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_7" rowspan="1"
            colspan="1" aria-label="P/L: activate to sort column ascending">P/L</th><th class="ralign nw sorting"
                                                                                        role="columnheader" tabindex="0"
                                                                                        aria-controls="DataTables_Table_7"
                                                                                        rowspan="1" colspan="1"
                                                                                        style="width: 60px;"
                                                                                        aria-label="P/L (%): activate to sort column ascending">P/L (%)</th><th
            class="ralign sorting_disabled center" role="columnheader" rowspan="1" colspan="1" style="width: 25px;"
            aria-label="&amp;nbsp;">&nbsp;</th></tr>
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
                 type="text" default="05-19-14" value="05-19-14"><span class="add-on"><i
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
                 type="text" default="05-19-14" value="05-19-14"><span class="add-on"><i
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
                 type="text" default="05-19-14" value="05-19-14"><span class="add-on"><i
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
                 type="text" default="05-19-14" value="05-19-14"><span class="add-on"><i
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
                             aria-controls="DataTables_Table_11" rowspan="1" colspan="1" style="width: 0px;"
                             aria-label="Cm. Vol.: activate to sort column ascending">Cm. Vol.</th><th
              class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_11" rowspan="1"
              colspan="1" style="width: 0px;" aria-label="Cm. Cost: activate to sort column ascending">Cm. Cost</th><th
              class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_11" rowspan="1"
              colspan="1" style="width: 0px;" aria-label="Cost: activate to sort column ascending">Cost</th><th
              class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_11" rowspan="1"
              colspan="1" style="width: 0px;" aria-label="Volume: activate to sort column ascending">Volume</th><th
              class="ralign nw sorting_desc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_11"
              rowspan="1" colspan="1" style="width: 0px;" aria-sort="descending"
              aria-label="Price: activate to sort column ascending">Price</th></tr>
          </thead>

          <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td class="ralign nw"
                                                                                         sort="0.250">0.25<span
                class="deczeros">0</span></td><td class="ralign nw" sort="18200.000">Ʀ18,200.0<span
              class="deczeros">00</span></td><td class="ralign nw" sort="18200.000">Ʀ18,200.0<span
              class="deczeros">00</span></td><td class="ralign nw" sort="0.250">0.25<span class="deczeros">0</span>
          </td><td class="ralign nw" sort="72800.000">Ʀ72,800.0<span class="deczeros">00</span></td></tr><tr
              class="even"><td class="ralign nw" sort="0.800">0.8<span class="deczeros">00</span></td><td
                class="ralign nw" sort="58130.000">Ʀ58,130.0<span class="deczeros">00</span></td><td class="ralign nw"
                                                                                                     sort="39930.000">Ʀ39,930.0<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="0.550">0.55<span class="deczeros">0</span>
            </td><td class="ralign nw" sort="72600.000">Ʀ72,600.0<span class="deczeros">00</span></td></tr><tr
              class="odd"><td class="ralign nw" sort="1.489">1.489</td><td class="ralign nw"
                                                                           sort="108116.950">Ʀ108,116.95<span
                  class="deczeros">0</span></td><td class="ralign nw" sort="49986.950">Ʀ49,986.95<span
                class="deczeros">0</span></td><td class="ralign nw" sort="0.689">0.689</td><td class="ralign nw"
                                                                                               sort="72550.000">Ʀ72,550.0<span
                  class="deczeros">00</span></td></tr><tr class="even"><td class="ralign nw" sort="1.889">1.889</td><td
              class="ralign nw" sort="137117.350">Ʀ137,117.35<span class="deczeros">0</span></td><td class="ralign nw"
                                                                                                     sort="29000.400">Ʀ29,000.4<span
                class="deczeros">00</span></td><td class="ralign nw" sort="0.400">0.4<span class="deczeros">00</span>
          </td><td class="ralign nw" sort="72501.000">Ʀ72,501.0<span class="deczeros">00</span></td></tr><tr
              class="odd"><td class="ralign nw" sort="2.012">2.012</td><td class="ralign nw"
                                                                           sort="146011.165">Ʀ146,011.165</td><td
                class="ralign nw" sort="8893.815">Ʀ8,893.815</td><td class="ralign nw" sort="0.123">0.123</td><td
                class="ralign nw" sort="72307.443">Ʀ72,307.443</td></tr><tr class="even"><td class="ralign nw"
                                                                                             sort="2.706">2.706</td><td
              class="ralign nw" sort="195979.165">Ʀ195,979.165</td><td class="ralign nw" sort="49968.000">Ʀ49,968.0<span
              class="deczeros">00</span></td><td class="ralign nw" sort="0.694">0.694</td><td class="ralign nw"
                                                                                              sort="72000.000">Ʀ72,000.0<span
                class="deczeros">00</span></td></tr><tr class="odd"><td class="ralign nw" sort="2.756">2.756</td><td
              class="ralign nw" sort="199554.165">Ʀ199,554.165</td><td class="ralign nw" sort="3575.000">Ʀ3,575.0<span
              class="deczeros">00</span></td><td class="ralign nw" sort="0.050">0.05<span class="deczeros">0</span>
          </td><td class="ralign nw" sort="71500.001">Ʀ71,500.001</td></tr><tr class="even"><td class="ralign nw"
                                                                                                sort="3.256">3.256</td><td
              class="ralign nw" sort="235104.165">Ʀ235,104.165</td><td class="ralign nw" sort="35550.000">Ʀ35,550.0<span
              class="deczeros">00</span></td><td class="ralign nw" sort="0.500">0.5<span class="deczeros">00</span>
          </td><td class="ralign nw" sort="71100.000">Ʀ71,100.0<span class="deczeros">00</span></td></tr><tr
              class="odd"><td class="ralign nw" sort="3.467">3.467</td><td class="ralign nw"
                                                                           sort="249879.862">Ʀ249,879.862</td><td
                class="ralign nw" sort="14775.697">Ʀ14,775.697</td><td class="ralign nw" sort="0.211">0.211</td><td
                class="ralign nw" sort="70027.000">Ʀ70,027.0<span class="deczeros">00</span></td></tr><tr
              class="even"><td class="ralign nw" sort="4.191">4.191</td><td class="ralign nw"
                                                                            sort="299908.986">Ʀ299,908.986</td><td
                class="ralign nw" sort="50029.124">Ʀ50,029.124</td><td class="ralign nw" sort="0.724">0.724</td><td
                class="ralign nw" sort="69101.000">Ʀ69,101.0<span class="deczeros">00</span></td></tr></tbody></table>

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
                               aria-controls="DataTables_Table_10" rowspan="1" colspan="1" style="width: 0px;"
                               aria-sort="ascending"
                               aria-label="Price: activate to sort column descending">Price</th><th
                class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_10"
                rowspan="1" colspan="1" style="width: 0px;"
                aria-label="Volume: activate to sort column ascending">Volume</th><th class="ralign nw sorting"
                                                                                      role="columnheader" tabindex="0"
                                                                                      aria-controls="DataTables_Table_10"
                                                                                      rowspan="1" colspan="1"
                                                                                      style="width: 0px;"
                                                                                      aria-label="Cost: activate to sort column ascending">Cost</th><th
                class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_10"
                rowspan="1" colspan="1" style="width: 0px;"
                aria-label="Cm. Cost: activate to sort column ascending">Cm. Cost</th><th class="ralign nw sorting"
                                                                                          role="columnheader"
                                                                                          tabindex="0"
                                                                                          aria-controls="DataTables_Table_10"
                                                                                          rowspan="1" colspan="1"
                                                                                          style="width: 0px;"
                                                                                          aria-label="Cm. Vol.: activate to sort column ascending">Cm. Vol.</th>
            </tr>
            </thead>

            <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td class="ralign nw"
                                                                                           sort="75849.999">Ʀ75,849.999</td><td
                class="ralign nw" sort="0.123">0.123</td><td class="ralign nw" sort="9329.549">Ʀ9,329.549</td><td
                class="ralign nw" sort="9329.549">Ʀ9,329.549</td><td class="ralign nw" sort="0.123">0.123</td></tr><tr
                class="even"><td class="ralign nw" sort="75850.000">Ʀ75,850.0<span class="deczeros">00</span></td><td
                  class="ralign nw" sort="0.132">0.132</td><td class="ralign nw" sort="10012.200">Ʀ10,012.2<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="19341.749">Ʀ19,341.749</td><td
                  class="ralign nw" sort="0.255">0.255</td></tr><tr class="odd"><td class="ralign nw"
                                                                                    sort="77000.000">Ʀ77,000.0<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="0.050">0.05<span class="deczeros">0</span>
            </td><td class="ralign nw" sort="3850.000">Ʀ3,850.0<span class="deczeros">00</span></td><td
                class="ralign nw" sort="23191.749">Ʀ23,191.749</td><td class="ralign nw" sort="0.305">0.305</td></tr><tr
                class="even"><td class="ralign nw" sort="77100.001">Ʀ77,100.001</td><td class="ralign nw"
                                                                                        sort="0.500">0.5<span
                    class="deczeros">00</span></td><td class="ralign nw" sort="38550.000">Ʀ38,550.0<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="61741.749">Ʀ61,741.749</td><td
                  class="ralign nw" sort="0.805">0.805</td></tr><tr class="odd"><td class="ralign nw"
                                                                                    sort="77500.000">Ʀ77,500.0<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="0.450">0.45<span class="deczeros">0</span>
            </td><td class="ralign nw" sort="34875.000">Ʀ34,875.0<span class="deczeros">00</span></td><td
                class="ralign nw" sort="96616.749">Ʀ96,616.749</td><td class="ralign nw" sort="1.255">1.255</td></tr><tr
                class="even"><td class="ralign nw" sort="77676.999">Ʀ77,676.999</td><td class="ralign nw"
                                                                                        sort="0.050">0.05<span
                    class="deczeros">0</span></td><td class="ralign nw" sort="3883.849">Ʀ3,883.849</td><td
                  class="ralign nw" sort="100500.598">Ʀ100,500.598</td><td class="ralign nw" sort="1.305">1.305</td>
            </tr><tr class="odd"><td class="ralign nw" sort="77677.000">Ʀ77,677.0<span class="deczeros">00</span>
            </td><td class="ralign nw" sort="0.100">0.1<span class="deczeros">00</span></td><td class="ralign nw"
                                                                                                sort="7767.700">Ʀ7,767.7<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="108268.298">Ʀ108,268.298</td><td
                class="ralign nw" sort="1.405">1.405</td></tr><tr class="even"><td class="ralign nw"
                                                                                   sort="78000.000">Ʀ78,000.0<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="1.000">1.0<span class="deczeros">00</span>
            </td><td class="ralign nw" sort="78000.000">Ʀ78,000.0<span class="deczeros">00</span></td><td
                class="ralign nw" sort="186268.298">Ʀ186,268.298</td><td class="ralign nw" sort="2.405">2.405</td>
            </tr><tr class="odd"><td class="ralign nw" sort="78287.000">Ʀ78,287.0<span class="deczeros">00</span>
            </td><td class="ralign nw" sort="0.020">0.02<span class="deczeros">0</span></td><td class="ralign nw"
                                                                                                sort="1565.740">Ʀ1,565.74<span
                  class="deczeros">0</span></td><td class="ralign nw" sort="187834.038">Ʀ187,834.038</td><td
                class="ralign nw" sort="2.425">2.425</td></tr><tr class="even"><td class="ralign nw"
                                                                                   sort="78501.000">Ʀ78,501.0<span
                  class="deczeros">00</span></td><td class="ralign nw" sort="0.050">0.05<span class="deczeros">0</span>
            </td><td class="ralign nw" sort="3925.050">Ʀ3,925.05<span class="deczeros">0</span></td><td
                class="ralign nw" sort="191759.088">Ʀ191,759.088</td><td class="ralign nw" sort="2.475">2.475</td></tr>
            </tbody></table></div>

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