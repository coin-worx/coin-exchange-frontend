<p class="vpad10">Fill out the form below to get Tier 2 verified. All fields marked <span class="reqmark">*</span> are required.</p>
<div class="frame withdraw-wrap" style="width: 788px;" ng-controller="getVerifiedController">
    <div class="center vpad10" ng-show="getErrors()">
        <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
    </div>
    <form class="form-horizontal medium form-control-left" autocomplete="off" method="post" data-asset="XXBT" novalidate="novalidate"
          name="tier3Form" ng-submit="submitTier3Form(tier3Form)">
        <div class="control-group">
            <label class="control-label">National ID Number</label>
            <div class="controls">
                <input autocomplete="off" tabindex="3" class="required input-xlarge" name="address1" value="" maxlength="128" type="text"
                       ng-model="tier3NationalId">
                <span class="reqmark"></span>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Document Type</label>
            <div class="controls">
                <input autocomplete="off" tabindex="4" class="required input-xlarge" name="address2" value="" maxlength="128" type="text"
                       ng-model="tier3DocumentType">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">File Name</label>
            <div class="controls">
                <input autocomplete="off" tabindex="5" class="required input-xlarge" name="address3" value="" maxlength="128" type="text"
                       ng-model="tier3FileName">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">Social Security Number</label>
            <div class="controls">
                <input autocomplete="off" tabindex="5" class="required input-xlarge" name="address3" value="" maxlength="128" type="text"
                       ng-model="tier3Ssn">
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
