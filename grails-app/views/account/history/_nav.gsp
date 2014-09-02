<div id="history-nav" class="clearfix subtab-wrap">
    <ul class="nav nav-pills nav-account dark spaced20 pull-left">
        <li ng-class="{active: ('account.trade.overview' | routeSegmentStartsWith)}">
            <a href="#/account/history/ledger">Ledgers</a>
        </li>
        <li ng-class="{active: ('account.trade.newOrder' | routeSegmentStartsWith)}">
            <a href="#/account/history/order">Closed Orders</a>
        </li>
        <li ng-class="{active: ('account.trade.orders' | routeSegmentStartsWith)}">
            <a href="#/account/history/trade">Trades</a>
        </li>
    </ul>

    <div class="pull-right">
    </div>
</div>