<div class="slider" id="orderlist-wrap">
  <div class="transfer" style="width: 1900px;">
    <div class="frame" style="width: 950px;">
      <div class="vpad10 alert alert-block alert-error hidden2" id="error-orderlist"></div>

      <g:render template="/account/trade/orders/newAndOpenOrders"/>

      <g:render template="/account/trade/orders/closedOrders"/>
    </div>
  </div>
</div>