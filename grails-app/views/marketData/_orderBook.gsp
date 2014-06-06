<div class="slider" id="orderlist-wrap" ng-controller="OrderBookController">
    <div class="transfer">

        <div class="row" ng-hide="loaded">
            <p style="text-align: center">
                <i class="icon-spinner icon-spin icon-large icon-5x"></i> <br>
                Loading...
            </p>
        </div>

        <div class="frame" style="width: 950px;" ng-show="loaded">

            <div class="vpad10 alert alert-block alert-error hidden2" id="error-orderlist"></div>

            <g:render template="/marketData/newAndOpenOrders"/>

            <g:render template="/marketData/closedOrders"/>
        </div>
    </div>
</div>