<div id="table-orderlist-open-wrap" class="vmarg40bot" ng-controller="NewAndOpenOrdersController">
  <h4 class="title">New &amp; Open Orders</h4>

  <p>orders : {{orders}}</p>

  <div class="form-inline" role="grid">
    <div class="row">
      <div class="span4"></div>

      <div class="span4 offset1"></div>

      <div class="dataTables_processing" ng-show="isLoaded()">Loading...</div>
    </div>
    <table class="table table-hover table-striped dataTable">
      <thead>
      <tr role="row">
        <th ng-click="updateSorting(OrderId)" class="lalign nw"
            ng-class="getSortingClass('OrderId')" style="width: 55px;">Order</th>
        <th ng-click="updateSorting(Type)" class="lalign nw"
            ng-class="getSortingClass('Type')" style="width: 165px;">Order Type</th>
        <th ng-click="updateSorting(CurrencyPair)" class="lalign"
            ng-class="getSortingClass('CurrencyPair')" style="width: 50px;">Pair</th>
        <th ng-click="updateSorting(Price)" class="ralign nw"
            ng-class="getSortingClass('Price')" style="width: 80px;">Price</th>
        <th ng-click="updateSorting(OpenQuantity)" class="ralign"
            ng-class="getSortingClass('OpenQuantity')" style="width: 115px;">Volume Rem.</th>
        <th ng-click="updateSorting(CostRem)" class="ralign" style="width: 115px;"
            ng-class="getSortingClass('CostRem')">Cost Rem.</th>
        <th ng-click="updateSorting(Status)" class="lalign"
            ng-class="getSortingClass('Status')" style="width: 65px;">Status</th>
        <th ng-click="updateSorting(DateTime)" class="lalign nw"
            ng-class="getSortingClass('DateTime')" style="width: 160px;">Opened</th>
        <th class="ralign center" style="width: 35px;">&nbsp;</th>
      </tr>
      </thead>

      <tfoot>
      <h1>{{sort.predicate}}</h1>

      <h1>{{sort.reverse}}</h1>
      <tr ng-repeat="order in orders | orderBy:sort.predicate:sort.reverse" ng-cloak>
        <th class="nw">{{order.OrderId | limitTo: 8}}</th>
        <th class="nw">{{order.Type}}</th>
        <th class="lalign">{{order.CurrencyPair}}</th>
        <th class="nw ralign">{{order.Price}}</th>
        <th class="ralign">{{order.OpenQuantity}}</th>
        <th class="ralign">{{order.CostRem}}</th>
        <th>
          <span class="label mono label-inverse">{{order.Status}}</span>
        </th>
        <th class="nw">{{order.DateTime | date : 'MM-dd-yy h:mm:ss'}}</th>
        <th class="center">
          <a name="cancel" ng-click="deleteOrder(order)" class="btn btn-danger thin tt btn-cancel">
            <i class="icon-remove icon-white"></i>
          </a>
        </th>
      </tr>
      </tfoot>

      <tbody ng-hide="orders.length">
      <tr class="odd">
        <td valign="top" colspan="9" class="dataTables_empty">No orders currently available.</td>
      </tr>
      </tbody>
    </table>

    <div class="row">
      <div class="span3">
        <div class="dataTables_info"></div>
      </div>

      <div class="span5 offset1"></div>
    </div>
  </div>
</div>