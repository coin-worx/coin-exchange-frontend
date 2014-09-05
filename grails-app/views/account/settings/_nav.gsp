<div id="trade-nav" class="clearfix subtab-wrap">
    <ul class="nav nav-pills nav-account dark spaced20 pull-left">
        <li ng-class="{active: ('account.settings.account' | routeSegmentStartsWith)}">
            <a href="#/account/settings/account">Account</a>
        </li>
        <li ng-class="{active: ('account.settings.notifications' | routeSegmentStartsWith)}">
            <a href="#/account/settings/notifications">Notifications</a>
        </li>
        <li ng-class="{active: ('account.settings.api' | routeSegmentStartsWith)}">
            <a href="#/account/settings/api">API</a>
        </li>
    </ul>
</div>