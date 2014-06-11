<div class="navbar navbar-static-top">
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
            <li ng-class="{active: ('account' | routeSegmentStartsWith)}">
              <a href="#/account">
                <span>Account</span>
              </a>
            </li>
            <li ng-class="{active: ('marketData' | routeSegmentStartsWith)}">
              <a href="#/marketData">
                <span>Market Data</span>
              </a>
            </li>
            <li ng-class="{active: ('help' | routeSegmentStartsWith)}">
              <a href="#/help">
                <span>Help</span>
              </a>
            </li>
          </ul>
        </div>

        <div class="span6">
          <div class="row">
            <div class="span4 header-balance-wrap">
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
            </div>

            <div class="span2" id="user-menu">
              <ul class="nav pull-right">
                <li class="dropdown">
                  <a data-toggle="dropdown" class="dropdown-toggle" href="javascript:void(0);">
                    <div class="username">
                      <span id="header-username"><i class="icon-user"></i> orpheecoin</span> <b class="caret"></b>
                    </div>

                    <div class="under">
                      <span>Last login: 05-07-14 21:31:53 +0200</span>
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