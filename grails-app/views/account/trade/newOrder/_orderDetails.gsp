<div class="frame review-wrap vmarg40bot frame-active" ng-controller="OrderDetailsController">
  <div class="row">
    <div class="span12">
      <div class="center">
        <h4 class="centered title vmarg0top">Order Details</h4>

        <h1>data : {{data}}</h1>

        <div class="well big well-data-list"><dl class="dl-horizontal lalign"><dt>Order</dt><dd>buy 22.0<span
            class="deczeros">0000000</span> XBTXRP @ market
        </dd><dt>Order Type</dt><dd>market</dd><hr><dt>Estimated XRP to spend</dt><dd>Ʀ752,413,647.837</dd><dt>XBT to receive</dt><dd>฿22.000</dd>
        </dl></div>

        <div class="order-complete" style="display: none;">
          <div class="vpad10 alert alert-block alert-success"></div>

          <div class="center btn-toolbar">
            <button type="button" class="btn-order-new btn btn-large hmarg30right">« Create New Order</button>

            <a href="#tab=orders" class="btn btn-primary btn-large">
              <i class="icon-list icon-white"></i> View Orders</a>
          </div>
        </div>
      </div>

      <form class="form-horizontal large form-control-left">
        <div class="row">
          <div class="span12 order-error-review-wrap vmarg10bot">
            <div class="order-error-review vpad10 vmarg0 alert alert-block alert-error center hidden2"
                 style="display: none;"></div>
          </div>
        </div>

        <div class="order-buttons">
          <div class="center btn-toolbar">
            <button type="button" class="btn-order-back btn btn-large hmarg30right" ng-click="back()">« Back</button>
            <button type="submit" class="btn-order-confirm btn btn-success btn-large" ng-click="createNewOrder()">
              <i class="icon-ok icon-white"></i> Submit Order</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>