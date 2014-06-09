<div id="order-form-nav">
  <ul class="nav nav-pills spaced20 mini dark vmarg30bot">
    <li ng-class="{active : ('account.trade.newOrder.simple' | routeSegmentStartsWith)}">
      <a href="#/account/trade/newOrder/simple">Simple</a>
    </li>
    <li ng-class="{active : ('account.trade.newOrder.intermediate' | routeSegmentStartsWith)}">
      <a href="#/account/trade/newOrder/intermediate">Intermediate</a>
    </li>
    <li ng-class="{active : ('account.trade.newOrder.advanced' | routeSegmentStartsWith)}">
      <a href="#/account/trade/newOrder/advanced">Advanced</a>
    </li>
  </ul>
</div>