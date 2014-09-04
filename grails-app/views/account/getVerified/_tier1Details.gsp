<div class="tab-content-wrap">
    <div class="tab-content">
        <div id="verify-wrap" class="tab-pane active">
            <form id="form-verify" action="/u/verify?subtab=tier1#verify-forms" class="jq-validate-form form-horizontal large form-control-left vpad10top hpad20" method="post" autocomplete="off">
                <div class="control-group">
                    <label class="control-label">Full Name</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier1Details.FullName"><strong></strong></span>
                        <p class="control-hint"><strong>IMPORTANT:</strong> once submitted, full name cannot be changed. Please ensure the spelling is correct.</p>
                    </div>
                </div>
                <div class="control-group vmarg20top">
                    <label class="control-label">Date of birth</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier1Details.DateOfBirth"><strong></strong></span>
                        <p class="control-hint"><strong>IMPORTANT:</strong> once submitted, your date of birth cannot be changed. Please ensure the correct date is selected.</p>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Country/Territory</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="tier1Details.Country"></span>
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