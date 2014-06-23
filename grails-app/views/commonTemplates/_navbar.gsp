<div class="navbar navbar-static-top" ng-controller="NavigationController">
  <div class="navbar-inner">
    <div class="container">
      <div class="row">
        <div class="span6">
          <h1 class="brand-title">
            <a class="brand" href="#/">
              <g:message code="brand.name"/>
            </a>
          </h1>
          <ul class="nav">
            <li ng-class="{active: ('account' | routeSegmentStartsWith)}" ng-show="isLoggedIn()">
              <a href="#/account">
                <span>Account</span>
              </a>
            </li>
            %{--<li ng-class="{active: ('about' | routeSegmentStartsWith)}" ng-hide="isLoggedIn()">
              <a href="#/about">
                <span>About</span>
              </a>
            </li>--}%
            <li ng-class="{active: ('marketData' | routeSegmentStartsWith)}">
              <a href="#/marketData">
                <span>Market Data</span>
              </a>
            </li>
            %{--<li ng-class="{active: ('help' | routeSegmentStartsWith)}">
              <a href="#/help">
                <span>Help</span>
              </a>
            </li>--}%
          </ul>
        </div>

        <div class="span6" ng-hide="isLoggedIn()">
          <div class="row">
            <div class="span4 header-balance-wrap">
              %{--<span class="hmarg10right"><a href="/login?setlang=en-us">
                <asset:image src="flags/US.png"/>
              </a>
              </span>
              <span class="hmarg10right">
                <a href="/login?setlang=en-gb">
                  <asset:image src="flags/GB.png"/>
                </a>
              </span>
              <span class="hmarg10right">
                <a href="/login?setlang=ko">
                  <asset:image src="flags/KR.png"/>
                </a>
              </span>--}%
            </div>

            <div class="span2" id="user-menu">
              <ul class="nav pull-right">
                <li ng-class="{active : ('login' | routeSegmentEqualsTo)}">
                  <a href="#/login">Log In</a>
                </li>
                <li ng-class="{active : ('signUp' | routeSegmentEqualsTo)}">
                  %{--<a href="#/signUp">Sign Up</a>--}%
                </li>
              </ul>
            </div>
          </div>
        </div>

        <div class="span6" ng-show="isLoggedIn()">
          <div class="row">
            %{--<div class="span4 header-balance-wrap">
              <div class="header-balance-inner-wrap">
                <div id="header-balance">
                  <div class="balance">
                    <span class="code mono" value="XBT">XBT:</span>
                    <span class="val mono" value="0.24119">฿0.24119</span>
                    <span class="code mono" value="XRP">XRP:</span>
                    <span class="val mono" value="257.31690">Ʀ257.31690</span>
                  </div>

                  <div class="under">
                    <span>Balances</span>
                  </div>
                </div>
              </div>
            </div>--}%

            <div class="span2" id="user-menu">
              <ul class="nav pull-right">
                <li class="dropdown">
                  <a data-toggle="dropdown" class="dropdown-toggle" href="javascript:void(0);">
                    <div class="username">
                      <span id="header-username">
                        <i class="icon-user"></i>
                        <span ng-bind="getUserName()"></span>
                      </span>
                      <b class="caret"></b>
                    </div>

                    <div class="under">
                      <span ng-bind-template="Last login: {{getLastLogin() | date:'yyyy-MM-dd HH:mm:ss Z'}}"></span>
                    </div>
                  </a>
                  <g:render template="/commonTemplates/headerDropdown"/>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>