<div class="tab-content-wrap">
    <div class="tab-content">
        <div id="verify-wrap" class="tab-pane active">
            <form id="form-verify" action="/u/verify?subtab=tier1#verify-forms" class="jq-validate-form form-horizontal large form-control-left vpad10top hpad20" method="post" autocomplete="off">
                <div class="control-group">
                    <label class="control-label">Status</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier3Status"><strong></strong></span>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Social Security Number</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier3Details.Ssn"><strong></strong></span>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">National Id Number</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier3Details.Nin"><strong></strong></span>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>