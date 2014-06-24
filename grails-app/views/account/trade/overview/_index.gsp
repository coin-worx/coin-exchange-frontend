<div id="trade-content-wrap" ng-controller="OverviewController">
    <div class="row" ng-hide="loaded">
        <p style="text-align: center">
            <i class="icon-spinner icon-spin icon-large icon-5x"></i> <br>
            Loading...
        </p>
    </div>
  <div class="tab-pane active" id="overview" ng-show="loaded">

    <g:render template="/account/trade/tabContent"/>
  </div>
</div>