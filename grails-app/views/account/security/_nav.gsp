<div class="clearfix subtab-wrap">
  <ul class="nav nav-pills nav-account dark spaced20 pull-left" id="security-nav">
    <li ng-class="{active : ('account.security.password' | routeSegmentEqualsTo)}">
      <a href="#/account/security/password">Password</a>
    </li>
    <li ng-class="{active : ('account.security.tfa' | routeSegmentEqualsTo)}">
      <a href="#/account/security/tfa">Two-Factor Authentication</a>
    </li>
  </ul>
</div>