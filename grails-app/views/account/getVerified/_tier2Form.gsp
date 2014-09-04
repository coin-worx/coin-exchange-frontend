<p class="vpad10">Fill out the form below to get Tier 2 verified. All fields marked <span class="reqmark">*</span> are required.</p>
<div class="frame withdraw-wrap" style="width: 788px;" ng-controller="getVerifiedController">
    <div class="center vpad10" ng-show="getErrors()">
        <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
    </div>
    <form class="form-horizontal medium form-control-left" autocomplete="off" method="post" data-asset="XXBT" novalidate="novalidate"
          name="tier2Form" ng-submit="submitTier2Form(tier2Form)">
        <div class="control-group">
            <label class="control-label">Address Line 1</label>
            <div class="controls">
                <input autocomplete="off" tabindex="3" class="required input-xlarge" name="address1" value="" maxlength="128" type="text"
                       ng-model="tier2AddressLine1">
                <span class="reqmark"></span>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Address Line 2</label>
            <div class="controls">
                <input autocomplete="off" tabindex="4" class="required input-xlarge" name="address2" value="" maxlength="128" type="text"
                       ng-model="tier2AddressLine2">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Address Line 3</label>
            <div class="controls">
                <input autocomplete="off" tabindex="5" class="required input-xlarge" name="address3" value="" maxlength="128" type="text"
                       ng-model="tier2AddressLine3">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Country/Territory</label>
            <div class="controls">
                <span class="readonly"></span>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">State</label>
            <div class="controls">
                <input autocomplete="off" tabindex="9" class="required input-large" name="city" value="" maxlength="80" type="text" ng-model="tier2State">
                <span class="reqmark"></span>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">City</label>
            <div class="controls">
                <input autocomplete="off" tabindex="9" class="required input-large" name="city" value="" maxlength="80" type="text" ng-model="tier2City">
                <span class="reqmark" ></span>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">ZIP/Postal Code</label>
            <div class="controls">
                <input autocomplete="off" tabindex="10" class="required input-medium" name="postalcode" value="" maxlength="64" type="text" ng-model="tier2Zip">
                <span class="reqmark "></span>
            </div>
        </div>
        <div class="control-group vpad20top">
            <div class="controls">
                <button tabindex="11" class="btn btn-success btn-large" type="submit" autocomplete="off">
                    <i class="icon icon-ok"></i>
                    Get Verified</button>
            </div>
        </div>
    </form>
</div>
