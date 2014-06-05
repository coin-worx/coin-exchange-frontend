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

            <div class="ib posrel">
              <div class="dropdown">
                <a href="#" title="" data-value="XXBT"
                   class="btn add-on volume-currency-toggle rounded dropdown-toggle tt"
                   data-toggle="dropdown"
                   data-original-title="Click to switch amount currency.">XBT
                  <span class="caret"></span>
                </a>
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
              <button autocomplete="off" type="submit" class="btn-order-confirm btn btn-success btn-large">
                <i class="icon-ok icon-white"></i>
                Submit Order
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>