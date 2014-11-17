<div id="trade-nav" class="clearfix subtab-wrap">
  <ul class="nav nav-pills nav-account dark spaced20 pull-left">
    <li ng-class="{active: ('account.trade.overview' | routeSegmentStartsWith)}">
      <a href="#/account/trade/overview">Overview</a>
    </li>
    <li ng-class="{active: ('account.trade.newOrder' | routeSegmentStartsWith)}">
      <a href="#/account/trade/newOrder">New Order</a>
    </li>
    <li ng-class="{active: ('account.trade.orders' | routeSegmentStartsWith)}">
      <a href="#/account/trade/orders">Orders</a>
    </li>
 <!--   <li ng-class="{active: ('account.trade.positions' | routeSegmentStartsWith)}">
      <a href="#/account/trade/positions">Positions</a>
    </li> -->
    <li ng-class="{active: ('account.trade.trades' | routeSegmentStartsWith)}">
      <a href="#/account/trade/trades">Trades</a>
    </li>
  </ul>

  <div class="pull-right">
    %{--<div class="feebar hidden2" style="display: block;">
      <div class="fee-wrap">
        <span class="mono fee">0.1000%</span>

        <p class="center control-hint">Current Fee</p>
      </div>

      <div>
        <div class="progress progress-striped progress-info">
          <div class="bar" style="width: 0%;"></div>

          <p class="mono progress-text">$4.40 / $10,000 (0.0440%)</p>
        </div>

        <p class="control-hint">&nbsp;</p>
      </div>

      <div class="fee-wrap">
        <span class="mono nextfee">0.0900%</span>

        <p class="nextfee-hint control-hint">Next Fee</p>
      </div>
    </div>--}%
  </div>
</div>