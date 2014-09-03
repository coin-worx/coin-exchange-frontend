<p class="vpad10">Fill out the form below to get Tier 2 verified. All fields marked <span class="reqmark">*</span> are required.</p>
<form id="form-verify" action="/u/verify?subtab=tier2#verify-forms" class="jq-validate-form form-horizontal large form-control-left hpad20 vpad10top" method="post" enctype="multipart/form-data" autocomplete="off">
    <div class="control-group">
        <label class="control-label">Address Line 1</label>
        <div class="controls">
            <input autocomplete="off" tabindex="3" class="required input-xlarge" name="address1" value="" maxlength="128" type="text">
            <span class="reqmark">*</span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">Address Line 2</label>
        <div class="controls">
            <input autocomplete="off" tabindex="4" class="required input-xlarge" name="address2" value="" maxlength="128" type="text">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">Address Line 3</label>
        <div class="controls">
            <input autocomplete="off" tabindex="5" class="required input-xlarge" name="address3" value="" maxlength="128" type="text">
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">Country/Territory</label>
        <div class="controls">
            <span class="readonly">France</span>
        </div>
    </div>
    <div class="control-group vmarg10bot province-wrap ">
        <label class="control-label">State/Province/Subdivision</label>
        <div class="controls">
            <div class="ib hmarg20right">
                <select name="province" class="span4" autocomplete="off" otherkey="subdivision-other" tabindex="7"><option value="">Select...</option><option value="subdivision-other">Other...</option><option value="3038033">Région Alsace</option><option value="3037350">Région Aquitaine</option><option value="3035876">Région Auvergne</option><option value="3034693">Région Basse-Normandie</option><option value="3030967">Région Bourgogne</option><option value="3030293">Région Bretagne</option><option value="3027939">Région Centre</option><option value="3027257">Région Champagne-Ardenne</option><option value="3023519">Région Corse</option><option value="3017372">Région Franche-Comté</option><option value="3013756">Région Haute-Normandie</option><option value="3012874">Région Île-de-France</option><option value="3007670">Région Languedoc-Roussillon</option><option value="2998268">Région Limousin</option><option value="2997551">Région Lorraine</option><option value="2993955">Région Midi-Pyrénées</option><option value="2990119">Région Nord-Pas-de-Calais</option><option value="2988289">Région Pays de la Loire</option><option value="2987375">Région Picardie</option><option value="2986492">Région Poitou-Charentes</option><option value="2985244">Région Provence-Alpes-Côte d'Azur</option><option value="2983751">Région Rhône-Alpes</option></select> <span class="reqmark ">*</span>
                <p class="control-hint">&nbsp;</p>
            </div>
            <div id="province-custom-wrap" class="ib hidden2">
                <input autocomplete="off" class="required input-large" disabled="disabled" name="province2" value="" maxlength="120" tabindex="8" type="text">
                <p class="control-hint">Enter a custom state/province/subdivision.</p>
            </div>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">City</label>
        <div class="controls">
            <input autocomplete="off" tabindex="9" class="required input-large" name="city" value="" maxlength="80" type="text">
            <span class="reqmark">*</span>
        </div>
    </div>
    <div class="control-group">
        <label class="control-label">ZIP/Postal Code</label>
        <div class="controls">
            <input autocomplete="off" tabindex="10" class="required input-medium" name="postalcode" value="" maxlength="64" type="text">
            <span class="reqmark ">*</span>
        </div>
    </div>
    <div class="control-group vpad20top">
        <div class="controls">
            <button tabindex="11" class="btn btn-success btn-large" type="submit" autocomplete="off">
                <i class="icon icon-ok"></i>
                Get Verified</button>
        </div>
    </div>
    <input name="csrftoken" value="BlJOuzXOoAWFia14vuDv,iqxDlTkl1pnX9hu6nV0g6Yb70mJdiqLIVM9aclMYLqD6gx5sPX85LjMMFwCE6CjZw--" type="hidden">
    <input name="subtab" value="tier2" type="hidden">
</form>
