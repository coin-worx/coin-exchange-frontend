<ul class="nav nav-tabs spaced10 " id="account-nav">
  <li ng-class="{active : ('account.trade' | routeSegmentStartsWith)}">
    <a href="#/account/trade"><i class="icon-retweet"></i>Trade</a>
  </li>
  <li ng-class="{active : ('account.funding' | routeSegmentStartsWith)}">
    <a href="#/account/funding"><i class="icon-money"></i>Funding</a>
  </li>
  <li ng-class="{active : ('account.security' | routeSegmentStartsWith)}">
    <a href="#/account/security"><i class="icon-lock"></i>Security</a>
  </li>
  <li ng-class="{active : ('account.settings' | routeSegmentStartsWith)}">
    <a href="#/account/settings"><i class="icon-wrench"></i>Settings</a>
  </li>
  <li ng-class="{active : ('account.history' | routeSegmentStartsWith)}">
    <a href="#/account/history"><i class="icon-time"></i>History</a>
  </li>
  <li ng-class="{active : ('account.getVerified' | routeSegmentStartsWith)}">
    <a href="#/account/getVerified"><i class="icon-check"></i>Get Verified</a>
  </li>
</ul>