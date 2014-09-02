//=require angular-source/components/account/history/ledger/ledger.module

'use strict';

angular.module('account.history.ledger').service('ledgerDetailsService',[
    '$http', function ($http) {
        return{
            getLedgerDetails : function(ledgerId){
                return $http.post('api/getLedgerDetails', ledgerId);
            }
        }
    }]);