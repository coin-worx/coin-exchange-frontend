<div class="transfer" ng-controller="NewOrderSimpleController">
  <div class="frame">
    <form class="form-order form-order-simple jq-validate-form vmarg5top" method="post" autocomplete="off"
          novalidate="novalidate" name="simpleOrderForm" ng-submit="checkParamsBeforeSubmit(simpleOrderForm)">
      <pre>{{currency}}</pre>
      <pre>{{type}}</pre>
      <fieldset>
        <div class="ib hmarg20right">
          <div class="ib btn-group top" data-toggle="buttons-radio" name="type">
            <button type="button" value="buy" class="btn" ng-click="changeType('Buy')"
                    ng-class="{'active btn-success': isTypeMatch('Buy')}">Buy</button>

            <button type="button" value="sell" class="btn" ng-click="changeType('Sell')"
                    ng-class="{'active btn-danger': isTypeMatch('Sell')}">Sell</button>
          </div>
        </div>

        <div class="ib control-group"
             ng-class="{'error' : simpleOrderForm.volume.$invalid && submitted}">
          <div class="input-append">
            <input placeholder="Amount" tabindex="1" type="number" min="0" step="0.000001" autocomplete="off"
                   required="" class="input-medium ralign hmarg0right" name="volume" ng-model="volume">

            <div class="ib posrel">
              <div class="dropdown" is-open="status.isOpen">

                <a href="#" class="btn add-on volume-currency-toggle rounded dropdown-toggle">
                  {{currency.amount}} <span class="caret"></span>
                </a>

                <ul class="dropdown-menu small" role="menu">
                  <li ng-class="{disabled: currency.amount === currency.quote}">
                    <a href ng-click="changeCurrency(currency.quote)"
                       ng-bind-template="({{currency.quote}})"></a>
                  </li>
                  <li ng-class="{disabled: currency.amount === currency.base}">
                    <a href ng-click="changeCurrency(currency.base)"
                       ng-bind-template="({{currency.base}})"></a>
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <p class="control-hint"
             ng-bind-template="Amount of {{currency.quote}} to
             {{isTypeMatch('Buy') ? 'sell' : 'buy'}}."></p>
        </div>

        <div class="ib symbol calc-op-symbol" ng-bind="sign"></div>

        <div class="ib control-group" ng-class="{'error' : simpleOrderForm.price.$invalid && submitted}">
          <div class="ib">
            <div class="input-append">
              <input type="number" placeholder="Price" min="0" tabindex="2" class="input-small ralign hmarg0right"
                     ng-disabled="isTypeMatch('Market')" step="0.000001"
                     ng-model="price" ng-required="isTypeMatch('Limit')" name="price" autocomplete="off">
              <span class="add-on" ng-bind="currency.base"></span>
            </div>
          </div>

          <div class="ib ordertype-wrap">
            <div class="btn-group" data-toggle="buttons-radio" name="ordertype">
              <button type="button" class="btn btn-small" value="market"
                      ng-class="{active: isTypeMatch('Market')}"
                      ng-click="changeOrderType('Market')">Market</button>
              <button type="button" class="btn btn-small" ng-class="{active: isTypeMatch('Limit')}"
                      value="limit" ng-click="changeOrderType('Limit')">Limit</button>
            </div>
          </div>

          <p class="control-hint" name="ordertype-hint" ng-show="isTypeMatch('Limit')"
             ng-bind-template="{{type}} at a fixed price per {{currency.quote}}."></p>

          <p class="control-hint" name="ordertype-hint" ng-show="isTypeMatch('Market')"
             ng-bind-template="{{type}} {{currency.quote}} at the best market price."></p>
        </div>

        <div class="ib symbol">=</div>

        <div class="ib control-group">
          <div class="input-append">
            <input placeholder="Total" type="number" tabindex="3" autocomplete="off" ng-model="total"
                   ng-disabled="isTypeMatch('Market')" min="0" step="0.000001"
                   class="input-medium ralign hmarg0right" name="total">
            <span class="add-on" ng-bind="currency.total"></span>
          </div>

          <p class="control-hint" name="total-hint"
             ng-bind-template="Estimated amount of {{currency.total}} to
             {{isTypeMatch('Buy') ? 'spend' : 'receive'}}."></p>
        </div>

        <div class="vmarg20top" ng-show="simpleOrderForm.$invalid && submitted">
          <div class="alert alert-block alert-error error-grouped">
            <div class="error" ng-show="simpleOrderForm.volume.$invalid">Amount is a required field.</div>

            <div class="error" ng-show="simpleOrderForm.price.$invalid">Price is required field.</div>
          </div>
        </div>

        <div class="buttons center vmarg10">
          <button tabindex="4" type="submit" class="btn-order-review btn btn-large submit"
                  ng-class="btnClass">

            <span ng-bind-template="{{type}} {{currency.quote}}
                with {{currency.base}}"></span>
            »
          </button>
        </div>
      </fieldset>
    </form>
  </div>
</div>