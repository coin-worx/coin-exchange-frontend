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


<div class="transfer" ng-controller="NewOrderSimpleController">
  <div class="frame">
    <form class="form-order form-order-simple jq-validate-form vmarg5top" method="post" autocomplete="off"
          novalidate="novalidate" name="simpleOrderForm" ng-submit="checkParamsBeforeSubmit(simpleOrderForm)">

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
            <input placeholder="Amount" tabindex="1" type="number" min="0" autocomplete="off" required=""
                   class="input-medium ralign hmarg0right" name="volume" ng-model="volume">

            <div class="ib posrel">
              <div class="dropdown" is-open="parameters.status.isOpen">

                <a href="#" class="btn add-on volume-currency-toggle rounded dropdown-toggle">
                  {{currency.amount}} <span class="caret"></span>
                </a>

                <ul class="dropdown-menu small" role="menu">
                  <li ng-class="{disabled: currency.amount === currency.from}">
                    <a href ng-click="changeCurrency(currency.from)"
                       ng-bind-template="({{currency.from}})"></a>
                  </li>
                  <li ng-class="{disabled: currency.amount === currency.to}">
                    <a href ng-click="changeCurrency(currency.to)"
                       ng-bind-template="({{currency.to}})"></a>
                  </li>
                </ul>
              </div>
            </div>
          </div>

          <p class="control-hint" ng-bind="getAmountLabel()"></p>
        </div>

        <div class="ib symbol calc-op-symbol" ng-bind="parameters.sign"></div>

        <div class="ib control-group" ng-class="{'error' : simpleOrderForm.price.$invalid && submitted}">
          <div class="ib">
            <div class="input-append">
              <input type="number" placeholder="Price" min="0" tabindex="2" class="input-small ralign hmarg0right"
                     ng-disabled="isOrderTypeMatch('Market')" ng-model="price" ng-required="isOrderTypeMatch('Limit')"
                     name="price" autocomplete="off">
              <span class="add-on" ng-bind="currency.to"></span>
            </div>
          </div>

          <div class="ib ordertype-wrap">
            <div class="btn-group" data-toggle="buttons-radio" name="ordertype">
              <button type="button" class="btn btn-small" value="market"
                      ng-class="{active: isOrderTypeMatch('Market')}"
                      ng-click="changeOrderType('Market')">Market</button>
              <button type="button" class="btn btn-small" ng-class="{active: isOrderTypeMatch('Limit')}"
                      value="limit" ng-click="changeOrderType('Limit')">Limit</button>
            </div>
          </div>

          <p class="control-hint" name="ordertype-hint" ng-show="isOrderTypeMatch('Limit')"
             ng-bind-template="{{parameters.type}} at a fixed price per {{currency.from}}."></p>

          <p class="control-hint" name="ordertype-hint" ng-show="isOrderTypeMatch('Market')"
             ng-bind-template="{{parameters.type}} {{currency.from}} at the best market price."></p>
        </div>

        <div class="ib symbol">=</div>

        <div class="ib control-group" ng-class="{'error' : simpleOrderForm.total.$invalid && submitted}">
          <div class="input-append">
            <input placeholder="Total" type="number" tabindex="3" autocomplete="off" ng-model="total"
                   ng-disabled="isOrderTypeMatch('Market')" min="0" required=""
                   class="input-medium ralign hmarg0right" name="total">
            <span class="add-on" ng-bind="currency.total"></span>
          </div>

          <p class="control-hint" name="total-hint" ng-bind="getTotalLabel()"></p>
        </div>

        <div class="vmarg20top" ng-show="simpleOrderForm.$invalid && submitted || parameters.error">
          <div class="alert alert-block alert-error error-grouped">
            <div class="error" ng-show="simpleOrderForm.volume.$invalid && !parameters.error">Amount is a required field.</div>

            <div class="error" ng-show="simpleOrderForm.price.$invalid && !parameters.error">Price is required field.</div>

            <div class="error" ng-show="simpleOrderForm.total.$invalid && !parameters.error">Total is required field.</div>

            <div class="error" ng-show="parameters.error" ng-bind="parameters.error"></div>

          </div>
        </div>

        <div class="buttons center vmarg10">
          <button tabindex="4" type="submit" class="btn-order-review btn btn-large submit"
                  ng-class="parameters.btnClass">

            <span ng-bind-template="{{parameters.type}} {{currency.from}}
                with {{currency.to}}"></span>
            »
          </button>
        </div>
      </fieldset>
    </form>

    <tabset>
      <tab heading="New & Open Orders">
        <g:render template="/account/trade/orders/newAndOpenOrders"/>
      </tab>
      <tab heading="Positions">
        <g:render template="/account/trade/positions/positions"/>
      </tab>
      <tab heading="Order Book">
        <g:render template="/account/trade/newOrder/orderBook"/>
      </tab>
    </tabset>
  </div>
</div>