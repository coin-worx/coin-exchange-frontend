<div class="order-complete" ng-show="order.created">
  <div class="vpad10 alert alert-block alert-success">
    <p>
      Order <a href ng-bind="order.orderId"></a> successfully created!
    </p>
  </div>

  <div class="center btn-toolbar">
    <button type="button" class="btn-order-new btn btn-large hmarg30right"
            ng-click="backToNewSimpleOrder()">« Create New Order</button>
    <a href="#/account/trade/orders" class="btn btn-primary btn-large">
      <i class="icon-list icon-white"></i>
      View Orders
    </a>
  </div>
</div>

<div class="row" ng-show="errors.length">
  <div class="span12 order-error-review-wrap vmarg10bot">
    <div class="order-error-review vpad10 vmarg0 alert alert-block alert-error center"></div>
  </div>
</div>

<div class="order-buttons" ng-hide="order.created">
  <div class="center btn-toolbar">
    <button type="button" class="btn-order-back btn btn-large hmarg30right"
            ng-click="backToNewSimpleOrder()">« Back</button>
    <button type="submit" class="btn-order-confirm btn btn-success btn-large"
            ng-click="submitOrder()">
      <i class="icon-ok icon-white"></i> Submit Order</button>
  </div>
</div>