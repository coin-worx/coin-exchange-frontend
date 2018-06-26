//=require angular-source/components/account/history/ledger/ledger.module

'use strict';

angular.module('account.history.ledger').service('ledgerService',[
    '$http', function ($http) {
        return{
            getLedgersForCurrency : function(currency){
                return $http.post('api/getLedgers', currency);
            },
            getAllLedgers : function(){
                return $http.get('api/getAllLedgers');
            }
        }
    }]);