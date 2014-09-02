//=require angular-source/components/account/history/ledger/ledger.module

'use strict';

angular.module('account.history.ledger').service('ledgerService',[
    '$http', function ($http) {
        return{
            getLedgers : function(currency){
                return $http.post('api/getLedgers', currency);
            }
        }
    }]);