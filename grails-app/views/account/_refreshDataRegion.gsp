<div id="account-tab-data" class="pull-right multiline" ng-controller="RefreshDataController">
    <div class="ib">
        <div>
            <span class="muted2 key">Current time:</span>
            <span id="local-clock" class="val" ng-bind="currentTime"></span>
        </div>
        <div>
            <span class="muted2 key">Last Updated:</span>
            <span class="order-data-lastupdate val manrefresh-last" ng-style="customStyle.style" ng-bind="lastUpdatedSeconds"></span>
        </div>
    </div>
    <div class="ib hpad20left top">
        <button class="manrefresh-btn btn btn-primary" autocomplete="off" title="Refresh Data" ng-click="reload()">
            <i class="icon icon-refresh icon-white" style="display: inline;">

            </i><img class="hidden2 spinner" src="/img/spinner-white.gif" alt="" style="display: none;"></button>

    </div>
</div>