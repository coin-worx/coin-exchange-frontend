<div class="frame review-wrap frame-active" style="width: 788px; visibility: visible;">
    <h5 class="title center">Confirm withdrawal</h5>
    <div class="review-result hidden2 center" style="display: block;">
        <div class="center vpad10" ng-show="getErrors()">
            <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
        </div>
        <div class="alert alert-block alert-success" ng-if="commitWithdrawSuccessful">
            <i class="icon-ok"></i>
            <span class="msg-success">Withdrawal {{commitWithdrawId}} successfully submitted.</span></div>
        <a href="#/account/funding/withdrawDetails" class="btn hmarg40right btn-large reload" ng-click="navigateToWithdrawForm()">« Back</a>
        <a href="#/account/funding/withdraw" class="btn btn-large btn-primary">View withdrawals</a>

    </div>
</div>