<div id="ledger-detail" ng-controller="ledgerDetailsController">
    <div class="clearfix vmarg20bot">
        <h4 class="title pull-left" ng-bind-template="Ledger {{ledger.LedgerId}}"></h4>
        <div class="pull-right"> <button class="btn btn-small back">« Back</button>
        </div>
    </div>
    <div class="row stats-dots-wrap">
        <div class="span6">
            <div class="hpad20right">
                <table class="stats-dots">
                    <tbody>
                    <tr ng-if="ledger.WithdrawId !== null && ledger.WithdrawID !== ''">
                        <td class="k">Withdrawal</td>
                        <td class="dots"></td>
                        <td ng-bind="ledger.WithdrawId"> </td>
                    </tr>
                    <tr ng-if="ledger.DepositId !== null && ledger.DepositId !== ''">
                        <td class="k">Deposit</td>
                        <td class="dots"></td>
                        <td ng-bind="ledger.DepositId"> </td>
                    </tr>
                    <tr ng-if="ledger.TradeId !== null && ledger.TradeId !== ''">
                        <td class="k">Trade</td>
                        <td class="dots"></td>
                        <td ng-bind="ledger.TradeId"> </td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign">Reference transaction ID associated with this ledger.</td>
                    </tr>
                    </tbody>
                </table>
                <table class="stats-dots">
                    <tbody>
                    <tr>
                        <td class="k">Order</td>
                        <td class="dots"></td>
                        <td ng-bind="ledger.OrderId"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <table class="stats-dots">
                <tbody>
                <tr>
                    <td class="k">Type</td>
                    <td class="dots"></td>
                    <td ng-bind="ledger.LedgerType"></td>
                </tr>
                <tr>
                    <td colspan="3" class="control-hint ralign">&nbsp;</td>
                </tr>
                </tbody>
            </table>
                <table class="stats-dots">
                    <tbody>
                    <tr>
                        <td class="k">Date</td>
                        <td class="dots">
                        </td>
                        <td ng-bind="ledger.DateTime"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="span6">
            <div class="hpad20left">
                <table class="stats-dots">
                    <tbody>
                    <tr>
                        <td class="k">Currency</td>
                        <td class="dots"></td>
                        <td ng-bind="ledger.Currency"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <table class="stats-dots">
                    <tbody>
                    <tr>
                        <td class="k">Amount</td>
                        <td class="dots"></td>
                        <td class="mono" ng-bind="ledger.Amount"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <table class="stats-dots">
                    <tbody>
                    <tr>
                        <td class="k">Fee</td>
                        <td class="dots"></td>
                        <td class="mono" ng-bind="ledger.Fee"></td>
                    </tr>
                    <tr>
                        <td colspan="3" class="control-hint ralign">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
                <table class="stats-dots">
                    <tbody>
                    <tr>
                        <td class="k">Balance</td>
                        <td class="dots"></td>
                        <td class="mono" ng-bind="ledger.Balance"></td>
                    </tr> <tr> <td colspan="3" class="control-hint ralign">&nbsp;</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
