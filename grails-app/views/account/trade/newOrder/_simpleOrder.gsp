<div class="transfer" style="width: 1900px;" ng-controller="NewOrderSimpleController">
  <div class="frame" style="width: 950px;">
    <form class="form-order form-order-simple jq-validate-form vmarg5top" method="post" autocomplete="off"
          novalidate="novalidate" name="simpleOrderForm" ng-submit="checkParamsBeforeSubmit(simpleOrderForm)">

      <fieldset>
        <div class="ib hmarg20right">
          <div class="ib btn-group top" data-toggle="buttons-radio" name="type">
            <button type="button" value="buy" class="btn" autocomplete="off"
                    ng-click="changeType('Buy')"
                    ng-class="{'active btn-success': parameters.type === 'Buy'}">Buy</button>

            <button type="button" value="sell" class="btn" autocomplete="off" ng-click="changeType('Sell')"
                    ng-class="{'active btn-danger': parameters.type === 'Sell'}">Sell</button>
          </div>
        </div>

        <div class="ib control-group"
             ng-class="{'error' : simpleOrderForm.volume.$invalid && submitted}">
          <div class="input-append">
            <input placeholder="Amount" tabindex="1" type="text" autocomplete="off" required=""
                   class="input-medium ralign hmarg0right" name="volume" ng-model="volume">

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

        <div class="ib symbol calc-op-symbol" ng-bind="parameters.sign"></div>

        <div class="ib control-group" ng-class="{'error' : simpleOrderForm.price.$invalid && submitted}">
          <div class="ib">
            <div class="input-append">
              <input type="text" placeholder="Price" tabindex="2" class="input-small ralign hmarg0right"
                     ng-model="price" ng-required="parameters.orderType === 'Limit'" name="price" autocomplete="off">
              <span class="add-on">XRP</span>
            </div>
          </div>

          <div class="ib ordertype-wrap">
            <div class="btn-group" data-toggle="buttons-radio" name="ordertype">
              <button type="button" class="btn btn-small" value="market" autocomplete="off"
                      ng-class="{active: parameters.orderType === 'Market'}"
                      ng-click="changeOrderType('Market')">Market</button>
              <button type="button" class="btn btn-small" ng-class="{active: parameters.orderType === 'Limit'}"
                      value="limit" autocomplete="off"
                      ng-click="changeOrderType('Limit')">Limit</button>
            </div>
          </div>

          <p class="control-hint" name="ordertype-hint">Buy at a fixed price per XBT.</p>
        </div>

        <div class="ib symbol">=</div>

        <div class="ib control-group">
          <div class="input-append">
            <input placeholder="Total" type="text" tabindex="3" autocomplete="off" ng-model="total"
                   class="input-medium ralign hmarg0right" name="total">
            <span class="add-on">XRP</span>
          </div>

          <p class="control-hint" name="total-hint">Estimated amount of XRP to spend.</p>
        </div>

        <div class="vmarg20top" ng-show="simpleOrderForm.$invalid && submitted">
          <div class="alert alert-block alert-error error-grouped">
            <div class="error" ng-show="simpleOrderForm.volume.$invalid">Amount is a required field.</div>

            <div class="error" ng-show="simpleOrderForm.price.$invalid">Price is required field.</div>
          </div>
        </div>

        <div class="buttons center vmarg10">
          <button tabindex="4" autocomplete="off" type="submit" class="btn-order-review btn btn-large submit"
                  ng-class="parameters.btnClass">
            <span>Buy XBT with XRP</span>
            »
          </button>
        </div>
      </fieldset>
    </form>
  </div>
</div>