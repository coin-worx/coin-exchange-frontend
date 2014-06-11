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

        <g:render template="/account/trade/newOrder/orderConfirmation"/>
      </div>
    </div>
  </div>
</div>