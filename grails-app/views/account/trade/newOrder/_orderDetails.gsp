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
              Order <a href ng-bind="order.orderId"></a> successfully created!
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