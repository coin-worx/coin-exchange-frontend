<div class="clearfix subtab-wrap">
  <ul class="nav nav-pills nav-account dark spaced20 pull-left" id="settings-nav">
    <li ng-class="{active: ('account.funding.deposit' | routeSegmentStartsWith)}">
      <a href="#/account/funding/deposit"><i class="icon icon-download-alt"></i>Deposit</a>
    </li>
    <li ng-class="{active: ('account.funding.withdraw' | routeSegmentStartsWith)}">
      <a href="#/account/funding/withdraw"><i class="icon icon-share"></i>Withdraw</a>
    </li>
    <li ng-class="{active: ('account.funding.audit' | routeSegmentStartsWith)}">
      <a href="#/account/funding/audit"><i class="icon icon-check"></i>Audit</a>
    </li>
  </ul>
</div>