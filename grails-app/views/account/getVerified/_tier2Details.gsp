<div class="tab-content-wrap">
    <div class="tab-content">
        <div id="verify-wrap" class="tab-pane active">
            <form id="form-verify" action="/u/verify?subtab=tier1#verify-forms" class="jq-validate-form form-horizontal large form-control-left vpad10top hpad20" method="post" autocomplete="off">
                <div class="control-group">
                    <label class="control-label">Status</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier2Status"><strong></strong></span>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Address Line 1</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier2Details.AddressLine1"><strong></strong></span>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Address Line 2</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier2Details.AddressLine2"><strong></strong></span>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Address Line 3</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier2Details.AddressLine3"><strong></strong></span>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">State</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier2Details.State"><strong></strong></span>
                    </div>
                </div>
                <div class="control-group vmarg20top">
                    <label class="control-label">City</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier2Details.City"><strong></strong></span>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">ZipCode</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier2Details.ZipCode"></span>
                    </div>
                </div>
                <div class="control-group vmarg10bot province-wrap hidden2">
                    <label class="control-label">State/Province/Subdivision</label>
                    <div class="controls">
                        <span class="readonly">
                        </span>
                        <p class="control-hint">&nbsp;</p>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Phone Number</label>
                    <div class="controls">
                        <div class="readonly">
                            <span class="hmarg40right" ng-bind="tier1Details.PhoneNumber"></span>
                        </div>
                        <p class="control-hint">Mobile</p>
                    </div>
                </div>
                <input name="subtab" value="tier1" type="hidden">
            </form>
        </div>
    </div>
</div>