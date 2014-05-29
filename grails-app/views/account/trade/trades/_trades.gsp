<div class="slider" id="tradelist-wrap">
    <div class="transfer" style="width: 1900px;">
        <div class="frame" style="width: 950px;">
            <div class="vpad10 alert alert-block alert-error hidden2" style="display: none;"></div>
            <div id="table-tradelist-wrap" class="vmarg40bot" ng-controller="TradesController">
                <h4 class="title">Trades</h4>
                <div class="form-inline" role="grid">
                    <div class="row">
                        <div class="span4"></div>
                        <div class="span4 offset1"></div>
                        <div class="dataTables_processing" ng-show="isLoaded()">Loading...</div>
                    </div>

                    <table class="table table-hover table-striped dataTable">
                        <thead>
                        <tr role="row">
                            <th ng-click="updateSorting('TradeId')" class="lalign nw"
                                ng-class="getSortingClass('TradeId')" style="width: 55px;">Trade</th>
                            <th ng-click="updateSorting('ExecutionDateTime')" class="lalign nw"
                                ng-class="getSortingClass('ExecutionDateTime')" style="width: 160px;">Executed</th>
                            <th ng-click="updateSorting('Price')" class="ralign nw"
                                ng-class="getSortingClass('Price')" style="width: 80px;">Price</th>
                            <th ng-click="updateSorting('Volume')" class="ralign"
                                ng-class="getSortingClass('Volume')" style="width: 115px;">Volume</th>
                            <th ng-click="updateSorting('CurrencyPair')" class="lalign"
                                ng-class="getSortingClass('CurrencyPair')" style="width: 50px;">Pair</th>
                            <%--<th ng-click="updateSorting('Cost')" class="ralign" style="width: 115px;"
                                ng-class="getSortingClass('Cost')">Cost</th>--%>
                        </tr>
                        </thead>

                        <tfoot>
                        <tr ng-repeat="trade in trades | orderBy:sort.predicate:sort.reverse" ng-cloak>
                            <th class="nw">{{trade.tradeId| limitTo: 8}}</th>
                            <th class="nw">{{trade.executionDateTime | date : 'MM-dd-yy h:mm:ss'}}</th>
                            <th class="nw ralign">{{trade.price}}</th>
                            <th class="ralign">{{trade.volume}}</th>
                            <th class="lalign">{{trade.currencyPair}}</th>
                            <%--<th class="ralign">{{trade.Cost}}</th>--%>
                        </tr>
                        </tfoot>

                        <tbody ng-hide="trades.length">
                        <tr class="odd">
                            <td valign="top" colspan="5" class="dataTables_empty">No trades yet.</td>
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
        </div>
    </div>
</div>
