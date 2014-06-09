<div class="transfer" ng-controller="NewOrderSimpleController">
  <div class="frame">
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
                   data-toggle="dropdown">{{parameters.currency.from}} <span class="caret"></span>
                </a>

                <ul class="dropdown-menu small">
                  <li class="disabled">
                    <a href ng-click="changeCurrency(parameters.currency.from)">Bitcoin (XBT)</a>
                  </li>
                  <li>
                    <a href ng-click="changeCurrency(parameters.currency.to)">Ripple (XRP)</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <p class="control-hint"
             ng-bind-template="Amount of {{parameters.currency.from}} to
             {{parameters.type === 'Buy' ? 'spend' : 'receive'}}."></p>
        </div>

        <div class="ib symbol calc-op-symbol" ng-bind="parameters.sign"></div>

        <div class="ib control-group" ng-class="{'error' : simpleOrderForm.price.$invalid && submitted}">
          <div class="ib">
            <div class="input-append">
              <input type="text" placeholder="Price" tabindex="2" class="input-small ralign hmarg0right"
                     ng-disabled="parameters.orderType === 'Market'"
                     ng-model="price" ng-required="parameters.orderType === 'Limit'" name="price" autocomplete="off">
              <span class="add-on" ng-bind="parameters.currency.to"></span>
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

          <p class="control-hint" name="ordertype-hint" ng-show="parameters.orderType === 'Limit'"
             ng-bind-template="{{parameters.type}} at a fixed price per {{parameters.currency.from}}."></p>

          <p class="control-hint" name="ordertype-hint" ng-show="parameters.orderType === 'Market'"
             ng-bind-template="{{parameters.type}} {{parameters.currency.from}} at the best market price."></p>
        </div>

        <div class="ib symbol">=</div>

        <div class="ib control-group">
          <div class="input-append">
            <input placeholder="Total" type="text" tabindex="3" autocomplete="off" ng-model="total"
                   ng-disabled="parameters.orderType === 'Market'"
                   class="input-medium ralign hmarg0right" name="total">
            <span class="add-on" ng-bind="parameters.currency.to"></span>
          </div>

          <p class="control-hint" name="total-hint"
             ng-bind-template="Estimated amount of {{parameters.currency.to}} to
             {{parameters.type === 'Buy' ? 'spend' : 'receive'}}."></p>
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

            <span ng-bind-template="{{parameters.type}} {{parameters.currency.from}}
                with {{parameters.currency.to}}"></span>
            »
          </button>
        </div>
      </fieldset>
    </form>
  </div>
</div>