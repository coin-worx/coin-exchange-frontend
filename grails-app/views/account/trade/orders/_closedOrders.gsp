<div id="table-orderlist-close-wrap" class="vmarg40bot" ng-controller="ClosedOrdersController">
  <h4 class="title">Closed Orders</h4>

  <div class="form-inline" role="grid">
    <div class="row">
      <div class="span4"></div>

      <div class="span4 offset1"></div>

      <div class="dataTables_processing" ng-show="isLoaded()">Loading...</div>
    </div>
    <table class="table table-hover table-striped dataTable">
      <thead>
      <tr role="row">
        <th ng-click="updateSorting('OrderId')" class="lalign nw"
            ng-class="getSortingClass('OrderId')" style="width: 55px;">Order</th>
        <th ng-click="updateSorting('Type')" class="lalign nw"
            ng-class="getSortingClass('Type')" style="width: 165px;">Order Type</th>
        <th ng-click="updateSorting('CurrencyPair')" class="lalign"
            ng-class="getSortingClass('CurrencyPair')" style="width: 50px;">Pair</th>
        <th ng-click="updateSorting('Price')" class="ralign nw"
            ng-class="getSortingClass('Price')" style="width: 80px;">Price</th>
        <th ng-click="updateSorting('Volume')" class="ralign"
            ng-class="getSortingClass('Volume')" style="width: 115px;">Volume Exec'd</th>
        <th ng-click="updateSorting('Cost')" class="ralign" style="width: 115px;"
            ng-class="getSortingClass('Cost')">Cost</th>
        <th ng-click="updateSorting('Status')" class="lalign"
            ng-class="getSortingClass('Status')" style="width: 65px;">Status</th>
        <th ng-click="updateSorting('DateTime')" class="lalign nw"
            ng-class="getSortingClass('DateTime')" style="width: 160px;">Closed</th>
        <%--<th class="ralign center" style="width: 35px;">&nbsp;</th> --%>
      </tr>
      </thead>

      <tbody>
      <tr ng-repeat="order in orders | orderBy:sort.predicate:sort.reverse"
          ng-class="{even: $even, odd: $odd}" ng-cloak>
        <td class="nw">{{order.OrderId | limitTo: 8}}</td>
        <td class="nw">{{order.Type}}</td>
        <td class="lalign">{{order.CurrencyPair}}</td>
        <td class="nw ralign">{{order.Price}}</td>
        <td class="ralign">{{order.Volume}}</td>
        <td class="ralign">{{order.Cost}}</td>
        <td>
          <span class="label mono" ng-class="setLabelStyles(order.Status)">{{order.Status}}</span>
        </td>
        <td class="nw">{{order.DateTime | date : 'MM-dd-yy h:mm:ss'}}</td>
      </tr>

      <tr class="odd" ng-hide="orders.length">
        <td valign="top" colspan="8" class="dataTables_empty">No orders currently available.</td>
      </tr>
      </tbody>
    </table>

    <div>
      <div class="pull-right">
        <pagination total-items="totalItems" ng-model="currentPage" num-pages="numPages"
                    previous-text="&lsaquo;" next-text="&rsaquo;" first-text="&laquo;" last-text="&raquo;"
                    max-size="maxSize" class="pagination-sm"
                    boundary-links="true" rotate="false"></pagination>
      </div>

      <div class="pull-left">
        <div class="dataTables_info">
          {{currentMinIndex}} - {{currentMaxIndex}} of {{totalItems}} orders
        </div>
      </div>
    </div>

    <div class="row">
      <div class="span3">
        <div class="dataTables_info"></div>
      </div>

      <div class="span5 offset1"></div>
    </div>
  </div>
</div>
