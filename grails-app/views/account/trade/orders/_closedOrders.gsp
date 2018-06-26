<!--
***************************************************************************** 
* Copyright 2016 Aurora Solutions 
* 
*    http://www.aurorasolutions.io 
* 
* Aurora Solutions is an innovative services and product company at 
* the forefront of the software industry, with processes and practices 
* involving Domain Driven Design(DDD), Agile methodologies to build 
* scalable, secure, reliable and high performance products.
* 
* Coin Exchange is a high performance exchange system specialized for
* Crypto currency trading. It has different general purpose uses such as
* independent deposit and withdrawal channels for Bitcoin and Litecoin,
* but can also act as a standalone exchange that can be used with
* different asset classes.
* Coin Exchange uses state of the art technologies such as ASP.NET REST API,
* AngularJS and NUnit. It also uses design patterns for complex event
* processing and handling of thousands of transactions per second, such as
* Domain Driven Designing, Disruptor Pattern and CQRS With Event Sourcing.
* 
* Licensed under the Apache License, Version 2.0 (the "License"); 
* you may not use this file except in compliance with the License. 
* You may obtain a copy of the License at 
* 
*    http://www.apache.org/licenses/LICENSE-2.0 
* 
* Unless required by applicable law or agreed to in writing, software 
* distributed under the License is distributed on an "AS IS" BASIS, 
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
* See the License for the specific language governing permissions and 
* limitations under the License. 
*****************************************************************************
-->


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
            ng-class="getSortingClass('Type')" style="width: 120px;">Order Type</th>
        <th ng-click="updateSorting('CurrencyPair')" class="lalign"
            ng-class="getSortingClass('CurrencyPair')" style="width: 50px;">Pair</th>
        <th ng-click="updateSorting('Price')" class="ralign nw"
            ng-class="getSortingClass('Price')" style="width: 80px;">Price</th>
        <th ng-click="updateSorting('VolumeExecuted')" class="ralign"
            ng-class="getSortingClass('VolumeExecuted')" style="width: 105px;">Volume Exec'd</th>
        <th ng-click="updateSorting('AveragePrice')" class="ralign"
              ng-class="getSortingClass('AveragePrice')" style="width: 80px;">Avg. Ex. Pr</th>
        <th ng-click="updateSorting('Cost')" class="ralign" style="width: 100px;"
            ng-class="getSortingClass('Cost')">Cost</th>
        <th ng-click="updateSorting('Status')" class="lalign"
            ng-class="getSortingClass('Status')" style="width: 65px;">Status</th>
        <th ng-click="updateSorting('ClosingDateTime')" class="lalign nw"
            ng-class="getSortingClass('ClosingDateTime')" style="width: 160px;">Closed</th>
      </tr>
      </thead>

      <tbody>
      <tr ng-repeat="order in filteredOrders"
          ng-class="{even: $even, odd: $odd}" ng-cloak>
        <td class="nw" ng-click="setOrderIdAsUrlParameter(order.OrderId)" tab-right-click="setOrderIdAsUrlParameter(order.OrderId)" ng-class="{active: ('account.trade.showOrderDetails' | routeSegmentStartsWith)}">
           <a href="{{locationPath}}">{{order.OrderId | limitTo : 8}}</a>
        </td>
        </td>
        <td class="nw" ng-bind-template="{{order.Type}}/{{order.Side}}"></td>
        <td class="lalign" ng-bind="order.CurrencyPair"></td>
        <td class="nw ralign" ng-bind="order.Price"></td>
        <td class="ralign" ng-bind="order.VolumeExecuted"></td>
          <td class="ralign" ng-bind="order.AveragePrice"></td>
        <td class="ralign" ng-bind="order.Cost"></td>
        <td>
          <span class="label mono" ng-class="setLabelStyles(order.Status)" ng-bind="order.Status"></span>
        </td>
        <td class="nw" ng-bind="order.ClosingDateTime | date : 'MM-dd-yy HH:mm:ss'"></td>
      </tr>

      <tr class="odd" ng-hide="filteredOrders.length">
        <td valign="top" colspan="8" class="dataTables_empty">No orders currently available.</td>
      </tr>
      </tbody>
    </table>

    <div ng-cloak>
      <div class="pull-right">
        <pagination total-items="totalItems" ng-model="currentPage" num-pages="numPages"
                    previous-text="&lsaquo;" next-text="&rsaquo;" first-text="&laquo;" last-text="&raquo;"
                    max-size="maxSize" class="pagination-sm" ng-change="pageChanged()"
                    boundary-links="true" rotate="false"></pagination>
      </div>

      <div class="pull-left">
        <div class="dataTables_info">
          {{currentMinIndex + 1}} - {{currentMaxIndex}} of {{totalItems}} orders
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
