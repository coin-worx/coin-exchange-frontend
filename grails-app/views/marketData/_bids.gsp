<div %{--id="table-orderlist-open-wrap" class="vmarg40bot"--}% style="width: 155px" ng-controller="BidsController">
  <h4 class="title">Buying</h4>

  <table class="table table-hover table-striped dataTable">
    <thead>
    <tr role="row" ng-cloak>
      <th ng-click="updateSorting('BidPrice')" class="lalign nw"
          ng-class="getSortingClass('BidPrice')" style="width: 65px;">Price</th>
      <th ng-click="updateSorting('BidVolume')" class="lalign nw"
          ng-class="getSortingClass('BidVolume')" style="width: 90px;">Volume</th>
    </tr>
    </thead>

    <tbody>
    <tr ng-repeat="order in filteredOrderBook"
        ng-class="{even: $even, odd: $odd}" ng-cloak>
      <td class="nw ralign" ng-bind="order.BidPrice" ng-class="{'changeralign': order.changeColor}"></td>
      <td class="ralign" ng-bind="order.BidVolume" ng-class="{'changeralign': order.changeColor}"></td>
    </tr>
    <tr class="odd" ng-hide="orderBook.length">
      <td valign="top" colspan="9" class="dataTables_empty">No bids currently available.</td>
    </tr>
    </tbody>
  </table>

  <div ng-cloak>
    <div class="pull-right">
        <pagination total-items="totalItems" ng-model="currentPage" num-pages="numPages"
                    previous-text="&lsaquo;" next-text="&rsaquo;"
                    max-size="maxSize" class="pagination-sm" ng-change="pageChanged()"
                    boundary-links="false" rotate="false"></pagination>
    </div>

    <div class="pull-left">
      <div class="dataTables_info" ng-cloak>
        {{currentMinIndex + 1}} - {{currentMaxIndex}} of {{totalItems}} bids
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