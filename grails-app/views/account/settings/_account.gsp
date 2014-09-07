<div class="tab-pane active" ng-controller="settingsAccountController">
    <div class="row">
        <div class="span12">
            <h4 class="title vmarg20bot">Change Account Settings</h4>
            <form id="form-settings" class="jq-validate-form form-horizontal large form-control-left vpad10top" method="post"
                  autocomplete="off" name="changeSettingsForm" ng-submit="submitChangeSettingsForm(changeSettingsForm)">
                <div class="control-group">
                    <label class="control-label">Username</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="accountSettings.Username"><strong></strong></span>
                        <p class="control-hint">Private identifier for your account. <strong>Never share this with a 3rd party</strong>.</p>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Public Account ID</label>
                    <div class="controls">
                        <span class="readonly"><strong></strong></span>
                        <p class="control-hint">Public identifier for your account. It's safe to share this ID with 3rd parties.</p>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Email</label>
                    <div class="controls">
                        <span class="readonly" ng-bind="accountSettings.Email"><strong></strong></span>
                        <input autocomplete="off" tabindex="1" class="required input-xlarge" name="email"
                               type="text" ng-model="email">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Password</label>
                    <div class="controls">
                        <span class="readonly"><a href="/#/account/security/password">Change password in Security settings</a></span>
                    </div>
                </div> <div class="control-group">
                <label class="control-label">PGP Public Key</label>
                <div class="controls">
                    <textarea autocomplete="off" rows="5" class="span8" name="pgpkey" ng-model="pgpPublicKey"></textarea>
                    <p class="control-hint">Copy/paste your public key to receive encrypted email. <a target="_blank" href="/help/faq#what-is-pgp">What's this?</a></p>
                </div>
            </div>
                <div class="control-group">
                    <label class="control-label">Language</label>
                    <div class="controls">
                        <select name="language" class="input-xmlarge select-address" autocomplete="off"
                                ng-model="language" ng-options="language.Name for language in languages">
                            <option value="">Select Language</option>
                        </select>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Timezone</label>
                    <div class="controls has-label">
                        %{--<select name="timezone" class="span4" autocomplete="off" ng-model="timeZone"><option value="">Select...</option><option value="1">[-11:00 SST] Samoa, Pacific</option><option value="2">[-11:00 NUT] Niue, Pacific</option><option value="3">[-10:00 TAHT] Tahiti, Pacific</option><option value="5">[-10:00 CKT] Rarotonga, Pacific</option><option value="6">[-10:00 HST] Honolulu, Pacific</option><option value="7">[-09:30 MART] Marquesas, Pacific</option><option value="4">[-09:00 HADT] Adak, N. America</option><option value="9">[-09:00 GAMT] Gambier, Pacific</option><option value="8">[-08:00 AKDT] Anchorage, N. America</option><option value="11">[-08:00 PST] Pitcairn, Pacific</option><option value="13">[-08:00 MeST] Metlakatla, N. America</option><option value="10">[-07:00 PDT] Los Angeles, N. America</option><option value="12">[-07:00 PDT] Santa Isabel, N. America</option><option value="14">[-07:00 MST] Phoenix, N. America</option><option value="15">[-06:00 MDT] Denver, N. America</option><option value="16">[-06:00 MDT] Mazatlan, N. America</option><option value="17">[-06:00 GALT] Galapagos, Pacific</option><option value="19">[-06:00 CST] Costa Rica, C. America</option><option value="26">[-06:00 EAST] Easter, Pacific</option><option value="18">[-05:00 CDT] Mexico City, N. America</option><option value="20">[-05:00 CDT] Chicago, N. America</option><option value="22">[-05:00 EST] Jamaica, Caribbean</option><option value="23">[-05:00 COT] Bogota, S. America</option><option value="24">[-05:00 ECT] Guayaquil, S. America</option><option value="25">[-05:00 PET] Lima, S. America</option><option value="28">[-04:30 VET] Caracas, S. America</option><option value="21">[-04:00 EDT] New York, N. America</option><option value="27">[-04:00 CDT] Havana, Caribbean</option><option value="29">[-04:00 BOT] La Paz, S. America</option><option value="30">[-04:00 GYT] Guyana, S. America</option><option value="31">[-04:00 AMT] Cuiaba, S. America</option><option value="32">[-04:00 AST] Puerto Rico, Caribbean</option><option value="34">[-04:00 AMT] Manaus, S. America</option><option value="40">[-04:00 PYT] Asuncion, S. America</option><option value="43">[-04:00 CLT] Chile, S. America</option><option value="33">[-03:00 ADT] Bermuda, Atlantic</option><option value="37">[-03:00 ART] Argentina, S. America</option><option value="39">[-03:00 BRT] Sao Paulo, S. America</option><option value="41">[-03:00 GFT] Cayenne, S. America</option><option value="42">[-03:00 BRT] Bahia, S. America</option><option value="44">[-03:00 ART] San Luis, S. America</option><option value="45">[-03:00 FKST] Stanley, Atlantic</option><option value="46">[-03:00 ROTT] Rothera, Antarctica</option><option value="47">[-03:00 SRT] Paramaribo, S. America</option><option value="49">[-03:00 UYT] Montevideo, S. America</option><option value="35">[-02:30 NDT] St Johns, N. America</option><option value="36">[-02:00 PMDT] Miquelon, N. America</option><option value="38">[-02:00 WGST] Godthab, N. America</option><option value="48">[-02:00 GST] South Georgia, Atlantic</option><option value="50">[-02:00 FNT] Noronha, S. America</option><option value="53">[-01:00 CVT] Cape Verde, Atlantic</option><option value="51">[+00:00 AZOST] Azores, Atlantic</option><option value="52">[+00:00 EGST] Scoresbysund, N. America</option><option value="58">[+00:00 UTC] UTC, Universe</option><option value="60">[+00:00 GMT] Reykjavik, Europe</option><option value="54">[+01:00 BST] London, Europe</option><option value="55">[+01:00 WEST] El Aaiun, Africa</option><option value="56">[+01:00 WEST] Casablanca, Africa</option><option value="57">[+01:00 IST] Dublin, Europe</option><option value="59">[+01:00 WEST] Lisbon, Europe</option><option value="62">[+01:00 CET] Algiers, Africa</option><option value="63">[+01:00 WAT] Lagos, Africa</option><option value="69">[+01:00 WAT] Windhoek, Africa</option><option selected="selected" value="61">[+02:00 CEST] Zurich, Europe</option><option value="64">[+02:00 EET] Tripoli, Africa</option><option value="67">[+02:00 SAST] Johannesburg, Africa</option><option value="71">[+02:00 CAT] Lusaka, Africa</option><option value="65">[+03:00 EEST] Damascus, Asia</option><option value="66">[+03:00 EEST] Beirut, Asia</option><option value="68">[+03:00 IDT] Jerusalem, Asia</option><option value="70">[+03:00 EEST] Cairo, Africa</option><option value="72">[+03:00 EEST] Istanbul, Europe</option><option value="73">[+03:00 SYOT] Syowa, Antarctica</option><option value="74">[+03:00 EAT] Nairobi, Africa</option><option value="75">[+03:00 EEST] Amman, Asia</option><option value="76">[+03:00 FET] Minsk, Europe</option><option value="77">[+03:00 AST] Baghdad, Asia</option><option value="79">[+04:00 VOLT] Volgograd, Europe</option><option value="80">[+04:00 GST] Dubai, Asia</option><option value="82">[+04:00 MSK] Moscow, Europe</option><option value="83">[+04:00 GET] Tbilisi, Asia</option><option value="84">[+04:00 MUT] Mauritius, Indian Ocean</option><option value="85">[+04:00 AMT] Yerevan, Asia</option><option value="86">[+04:00 SAMT] Samara, Europe</option><option value="87">[+04:00 SCT] Mahe, Indian Ocean</option><option value="88">[+04:00 RET] Reunion, Indian Ocean</option><option value="78">[+04:30 IRDT] Tehran, Asia</option><option value="89">[+04:30 AFT] Kabul, Asia</option><option value="81">[+05:00 AZST] Baku, Asia</option><option value="90">[+05:00 PKT] Karachi, Asia</option><option value="91">[+05:00 MVT] Maldives, Indian Ocean</option><option value="92">[+05:00 TJT] Dushanbe, Asia</option><option value="93">[+05:00 MAWT] Mawson, Antarctica</option><option value="94">[+05:00 TMT] Ashgabat, Asia</option><option value="95">[+05:00 TFT] Kerguelen, Indian Ocean</option><option value="96">[+05:00 AQTT] Aqtobe, Asia</option><option value="97">[+05:00 ORAT] Oral, Asia</option><option value="98">[+05:00 UZT] Tashkent, Asia</option><option value="99">[+05:30 IST] Calcutta, Asia</option><option value="100">[+05:45 NPT] Kathmandu, Asia</option><option value="101">[+06:00 BDT] Dhaka, Asia</option><option value="102">[+06:00 KGT] Bishkek, Asia</option><option value="103">[+06:00 QYZT] Qyzylorda, Asia</option><option value="104">[+06:00 VOST] Vostok, Antarctica</option><option value="105">[+06:00 YEKT] Yekaterinburg, Asia</option><option value="106">[+06:00 ALMT] Almaty, Asia</option><option value="107">[+06:00 IOT] Chagos, Indian Ocean</option><option value="108">[+06:00 BTT] Thimphu, Asia</option><option value="109">[+06:30 MMT] Rangoon, Asia</option><option value="110">[+06:30 CCT] Cocos, Indian Ocean</option><option value="111">[+07:00 ICT] Bangkok, Asia</option><option value="112">[+07:00 NOVT] Novosibirsk, Asia</option><option value="113">[+07:00 OMST] Omsk, Asia</option><option value="114">[+07:00 DAVT] Davis, Antarctica</option><option value="115">[+07:00 WIB] Jakarta, Asia</option><option value="116">[+07:00 CXT] Christmas, Indian Ocean</option><option value="117">[+07:00 HOVT] Hovd, Asia</option><option value="118">[+08:00 KRAT] Krasnoyarsk, Asia</option><option value="119">[+08:00 ULAT] Ulaanbaatar, Asia</option><option value="120">[+08:00 PHT] Manila, Asia</option><option value="121">[+08:00 WST] Perth, Australia</option><option value="122">[+08:00 SGT] Singapore, Asia</option><option value="123">[+08:00 CST] Beijing, Asia</option><option value="124">[+08:00 BNT] Brunei, Asia</option><option value="125">[+08:00 MYT] Kuala Lumpur, Asia</option><option value="126">[+08:00 HKT] Hong Kong, Asia</option><option value="127">[+08:00 WITA] Makassar, Asia</option><option value="128">[+08:00 CHOT] Choibalsan, Asia</option><option value="129">[+08:45 CWST] Eucla, Australia</option><option value="130">[+09:00 IRKT] Irkutsk, Asia</option><option value="131">[+09:00 JST] Tokyo, Asia</option><option value="132">[+09:00 TLT] Dili, Asia</option><option value="133">[+09:00 KST] Seoul, Asia</option><option value="134">[+09:00 PWT] Palau, Pacific</option><option value="135">[+09:00 WIT] Jayapura, Asia</option><option value="136">[+09:30 CST] Darwin, Australia</option><option value="143">[+09:30 CST] Adelaide, Australia</option><option value="137">[+10:00 PGT] Port Moresby, Pacific</option><option value="138">[+10:00 ChST] Guam, Pacific</option><option value="139">[+10:00 YAKT] Yakutsk, Asia</option><option value="140">[+10:00 DDUT] DumontDUrville, Antarctica</option><option value="141">[+10:00 CHUT] Chuuk, Pacific</option><option value="142">[+10:00 EST] Queensland, Australia</option><option value="144">[+10:00 EST] Sydney, Australia</option><option value="148">[+10:30 LHST] Lord Howe, Australia</option><option value="145">[+11:00 MIST] Macquarie, Antarctica</option><option value="146">[+11:00 SBT] Guadalcanal, Pacific</option><option value="147">[+11:00 NCT] Noumea, Pacific</option><option value="149">[+11:00 VLAT] Vladivostok, Asia</option><option value="150">[+11:00 KOST] Kosrae, Pacific</option><option value="151">[+11:00 VUT] Efate, Pacific</option><option value="152">[+11:00 PONT] Pohnpei, Pacific</option><option value="153">[+11:00 SAKT] Sakhalin, Asia</option><option value="154">[+11:30 NFT] Norfolk, Pacific</option><option value="155">[+12:00 GILT] Tarawa, Pacific</option><option value="156">[+12:00 PETT] Kamchatka, Asia</option><option value="157">[+12:00 WFT] Wallis, Pacific</option><option value="158">[+12:00 NRT] Nauru, Pacific</option><option value="159">[+12:00 WAKT] Wake, Pacific</option><option value="160">[+12:00 FJT] Fiji, Pacific</option><option value="161">[+12:00 TVT] Funafuti, Pacific</option><option value="162">[+12:00 MAGT] Magadan, Asia</option><option value="163">[+12:00 ANAT] Anadyr, Asia</option><option value="164">[+12:00 MHT] Majuro, Pacific</option><option value="167">[+12:00 NZST] Auckland, Pacific</option><option value="169">[+12:45 CHAST] Chatham, Pacific</option><option value="165">[+13:00 TOT] Tongatapu, Pacific</option><option value="166">[+13:00 PHOT] Enderbury, Pacific</option><option value="168">[+13:00 TKT] Fakaofo, Pacific</option><option value="171">[+13:00 WST] Apia, Pacific</option><option value="170">[+14:00 LINT] Kiritimati, Pacific</option></select> <p class="control-hint vmarg10bot">The timezone used for date display.</p>--}%
                        %{--<input autocomplete="off" tabindex="1" class="required input-xlarge" name="timeZone"
                               type="text" ng-model="timeZone">--}%
                        <span class="readonly" ng-bind="timeZone"><strong></strong></span>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Auto Logout</label>
                    <div class="controls">
                        <div class="ib hmarg20right">
                            <select name="autologouttype" class="input-large" autocomplete="off"
                                    ng-options="mode.name for mode in logoutModes" ng-model="selectedMode"
                                    ng-change="setLogoutMode(selectedMode)">
                                <option value="">Select Mode</option>
                                    </select>
                            <p class="control-hint">Minutes of account inactivity before automatic logout.</p>
                        </div>
                        <div id="autologoutcwrap" class="ib ">
                            <input class="ralign input-smaller" name="autologout" value="240" type="text" ng-model="autoLogoutMinutes">
                            <span class="middle"> minutes</span>
                            <p class="control-hint">Custom auto logout can be between 2 and 240 minutes.</p>
                        </div>
                    </div>
                </div>
                <div class="center vpad10" ng-show="getErrors()">
                    <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
                </div>
                <div class="center vpad10" ng-show="getResponse()">
                    <div class="alert alert-block alert-success" ng-bind="getResponse()"></div>
                </div>
                <div class="control-group vpad20top">
                    <div class="controls">
                        <button class="btn btn-success btn-large" type="submit" autocomplete="off">Update Settings</button>
                    </div>
                </div>
                <input name="csrftoken" value="NN0ItiHrfdaso9S_pkufRGX6L7RXVzb9oOupRth_CgwZS0Z5s6IOyqnoDvKWe6mZPgIamsPTbCuSkoCuo_xscg--" type="hidden">
                <input name="action" value="account" type="hidden">
                <input name="tab" value="account" type="hidden">
            </form>
        </div>
    </div>
</div>