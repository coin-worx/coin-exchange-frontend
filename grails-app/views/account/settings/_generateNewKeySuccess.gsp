<div ng-controller="settingsApiController">
<form class="form-horizontal medium form-control-left" autocomplete="off" method="post">

    <div class="control-group">
        <label class="control-label">API Key</label>
        <div class="controls">
            <span class="readonly fee" ng-bind="newSecurityKey.ApiKey">
            </span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">Secret Key</label>
        <div class="controls">
            <span class="readonly fee" ng-bind="newSecurityKey.SecretKey">
            </span>
        </div>
    </div>
    <div class="center vpad10" ng-show="getErrors()">
        <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
    </div>
    <div class="center vpad10" ng-show="getResponse()">
        <div class="alert alert-block alert-success" ng-bind="getResponse()"></div>
    </div>
</form>
</div>