<div class="span6" ng-controller="RatesController">
    <div class="hpad20left">
        <div class="clearfix">
            <h4 class="pull-left title">Rates</h4>

            <p class="pull-right table-title-hint">Exchange rates used for trade balance calculations.</p>
        </div>

        <table class="table table-hover table-striped dataTable">
            <thead>
            <tr role="row" ng-cloak>
                <th ng-click="updateSorting('CurrencyPair')" class="lalign nw"
                    ng-class="getSortingClass('CurrencyPair')" style="width: 55px;">CurrencyPair</th>
                <th ng-click="updateSorting('Rate')" class="lalign nw"
                    ng-class="getSortingClass('Rate')" style="width: 165px;">Rate</th>
            </tr>
            </thead>

            <tbody>
            <tr ng-repeat="rate in rates | orderBy:sort.predicate:sort.reverse"
                ng-class="{even: $even, odd: $odd}" ng-cloak>
                <td class="nw ralign" ng-bind="rate.CurrencyPair"></td>
                <td class="ralign" ng-bind="rate.Rate"></td>
            </tr>
            <tr class="odd" ng-hide="rates.length">
                <td valign="top" colspan="9" class="dataTables_empty">No Rates currently available.</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>