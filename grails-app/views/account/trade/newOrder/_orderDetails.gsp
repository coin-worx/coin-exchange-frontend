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


<div class="frame review-wrap vmarg40bot frame-active" ng-controller="OrderDetailsController">
  <div class="row">
    <div class="span12">
      <div class="center">
        <h4 class="centered title vmarg0top">Order Details</h4>

        <div class="well big well-data-list">
          <dl class="dl-horizontal lalign">
            <dt>Order</dt>
            <dd ng-bind-template="{{data.order.type}} {{data.order.volume}}
            {{data.order.pair}} @ {{data.order.orderType}}"></dd>
            <dt>Order Type</dt>
            <dd ng-bind="data.order.orderType"></dd>
            <hr>
            <dt ng-bind-template="{{data.toSpend.currency}}"></dt>
            <dd ng-bind-template="{{data.toSpend.volume}}"></dd>
            <dt ng-bind-template="{{data.toReceive.currency}}"></dt>
            <dd ng-bind-template="{{data.toReceive.volume}}"></dd>
          </dl>
        </div>

        <div class="order-complete" ng-show="order.created">
          <div class="vpad10 alert alert-block alert-success">
            <p>
              Order <a href ng-click="setOrderId(order.orderId)" ng-bind="order.orderId"></a> successfully created!
            </p>
          </div>

          <div class="center btn-toolbar">
            <button type="button" class="btn-order-new btn btn-large hmarg30right"
                    ng-click="back()">« Create New Order</button>
            <a href="#/account/trade/orders" class="btn btn-primary btn-large">
              <i class="icon-list icon-white"></i>
              View Orders
            </a>
          </div>
        </div>
      </div>

      <form class="form-horizontal large form-control-left">
        <div class="row" ng-show="errors.length">
          <div class="span12 order-error-review-wrap vmarg10bot">
            <div class="order-error-review vpad10 vmarg0 alert alert-block alert-error center"></div>
          </div>
        </div>

        <div class="order-buttons" ng-hide="order.created">
          <div class="center btn-toolbar">
            <button type="button" class="btn-order-back btn btn-large hmarg30right"
                    ng-click="back()">« Back</button>
            <button type="submit" class="btn-order-confirm btn btn-success btn-large"
                    ng-click="submitOrder()">
              <i class="icon-ok icon-white"></i> Submit Order</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>