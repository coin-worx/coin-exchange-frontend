<h5 class="title">Delete address</h5>
<div class="center vpad10" ng-show="getErrors()">
    <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
</div>
<div class="delete-address-result hidden2 center" style="display: block;">
    <div class="alert alert-block alert-success">Address deleted successfully. </div>
    <button type="button" class="btn btn-large back" ng-click="navigateToManageWithdraw()">« Back</button>
</div>