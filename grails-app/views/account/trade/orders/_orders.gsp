<div class="slider" id="orderlist-wrap" ng-controller="OrdersController">
  <div class="transfer">

    <div class="row" ng-hide="loaded">
      <p style="text-align: center">
        <i class="icon-spinner icon-spin icon-large icon-5x"></i> <br>
        Loading...
      </p>
    </div>

    <div class="frame" style="width: 950px;" ng-show="loaded">

      <div class="vpad10 alert alert-block alert-error hidden2" id="error-orderlist"></div>

        <li ng-class="{active: ('account.trade.showOrderDetails' | routeSegmentStartsWith)}">
            <a href="#/account/trade/showOrderDetails">Nederandaaandd</a>
        </li>
      <g:render template="/account/trade/orders/newAndOpenOrders"/>

      <g:render template="/account/trade/orders/closedOrders"/>
    </div>
  </div>
</div>