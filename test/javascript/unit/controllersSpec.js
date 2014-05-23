'use strict';
/*describe('controllers', function(){
 beforeEach(module('blancrockExchangeApp'));
 it('should ...', inject(function($controller) {
 var myCtrl = $controller('NavigationController', {$scope: {} });
 expect(myCtrl).toBeDefined();
 }));
 });*/
describe('Controller: blancrockNavigationCtrl', function() {
    beforeEach(module('blancrockExchangeApp'));
    var location, scope;
    beforeEach(inject(function($controller, $rootScope, $location) {
        location = $location;
        scope = $rootScope.$new();
        $controller('NavigationController', { $scope: scope});
    }));
    describe('isActive', function(){
        it('returns true when paths are the same', function(){
            location.path('/market');
            console.log("testing same path");
            expect(scope.isActive('/market')).toBeTruthy();
        });
        it('returns false when paths are different', function(){
            location.path('/market');
            console.log("testing different path");
            expect(scope.isActive('/account')).toBeFalsy();
        });
    });
});