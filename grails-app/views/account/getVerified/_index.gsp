<div class="row" ng-controller="getVerifiedController">
<div class="span12">
<h4 class="title vmarg20bot">Get Verified</h4>
<p class="vmarg40bot">Kraken requires additional user information before any deposits or withdrawals can be made in order to meet KYC/AML legal requirements. There are multiple tier levels of funding limits, each with increasing amounts of deposit/withdraw limits.</p>
<table class="table table-striped table-info table-tier">
<thead>
<tr>
    <th style="width: 14%"></th>
    <th class="center" style="width: 22%">Daily limits</th>
    <th class="center" style="width: 22%">Monthly limits</th>
    <th>Requirements</th>
    <th style="width: 14%">Verify Status</th>
</tr>
</thead>
<tbody>
<tr>
    <td class="keycol">
        <strong>Tier 0</strong>
        <br>
        <small style="color:blue;">Deposits and withdrawals are not available.</small>
    </td>
    <td>
        <!--Tier 0 Daily Limits Start-->
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Deposit </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{depositTierLimits.Tier0DailyLimit}}"> </td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Withdraw </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{withdrawTierLimits.Tier0DailyLimit}}"></td>
            </tr>
            </tbody>
        </table>
        <!--Tier 0 Daily Limits Ends-->
    </td>
    <td>
        <!--Tier 0 Monthly Limits Start-->
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Deposit </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{depositTierLimits.Tier0MonthlyLimit}}"> </td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Withdraw </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{withdrawTierLimits.Tier0MonthlyLimit}}"> </td>
            </tr>
            </tbody></table>
        <!--Tier 0 Monthly Limits Ends-->
    </td>
    <td>
        Account signup </td>
    <td ng-bind="tier0Status"> <i class="icon-ok"></i></td>
</tr>
<tr>
    <td class="keycol">
        <strong>Tier 1</strong>
        <br>
        <small style="color:blue;">Deposits and withdrawals are limited to digital currencies only.</small>
    </td>
    <td>
        <!--Tier 1 Daily Limits Start-->
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Deposit </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{depositTierLimits.Tier1DailyLimit}}"> </td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Withdraw </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{withdrawTierLimits.Tier1DailyLimit}}"> </td>
            </tr>
            </tbody></table>
        <!--Tier 1 Daily Limits Ends-->
    </td>
    <td>
        <!--Tier 1 Monthly Limits Start-->
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Deposit </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{depositTierLimits.Tier1MonthlyLimit}}"></td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Withdraw </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{withdrawTierLimits.Tier1MonthlyLimit}}"> </td>
            </tr>
            </tbody></table>
        <!--Tier 1 Monthly Limits Ends-->
    </td>
    <td>
        <ul><li>Full name</li><li>Date of birth</li><li>Country of residence</li><li>Phone number</li></ul> </td>
    <td ng-bind="tier1Status"> <i class="icon-ok"></i></td>
</tr>
<tr>
    <td class="keycol">
        <strong>Tier 2*</strong>
    </td>
    <td>
        <!--Tier 2 Daily Limits Start-->
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Deposit </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{depositTierLimits.Tier2DailyLimit}}"> </td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Withdraw </td>
                <td class="dots"></td>
                <td ng-bind="withdrawTierLimits.Tier2DailyLimit"> </td>
            </tr>
            </tbody></table>
        <!--Tier 2 Daily Limits Ends-->
    </td>
    <td>
        <!--Tier 2 Monthly Limits Start-->
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Deposit </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{depositTierLimits.Tier2MonthlyLimit}}"> </td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Withdraw </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{withdrawTierLimits.Tier2MonthlyLimit}}"></td>
            </tr>
            </tbody></table>
        <!--Tier 2 Monthly Limits Ends-->
    </td>
    <td>
        <ul><li>All of the above</li><li>Address verification</li></ul> </td>
    <td ng-bind="tier2Status"></td>
</tr>
<tr>
    <td class="keycol">
        <strong>Tier 3</strong>
    </td>
    <td>
        <!--Tier 3 Daily Limits Start-->
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Deposit </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{depositTierLimits.Tier3DailyLimit}}"> </td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Withdraw </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{withdrawTierLimits.Tier3DailyLimit}}"></td>
            </tr>
            </tbody>
        </table>
        <!--Tier 3 Daily Limits Ends-->
    </td>
    <td>
        <!--Tier 3 Monthly Limits Start-->
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Deposit </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{depositTierLimits.Tier3MonthlyLimit}}"> </td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Withdraw </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{withdrawTierLimits.Tier3MonthlyLimit}}"></td>
            </tr>
            </tbody>
        </table>
        <!--Tier 3 Monthly Limits Ends-->
    </td>
    <td>
        <ul><li>All of the above</li><li>Government issued ID</li><li>Verified proof of residence (e.g., utility bill no more than 3 months old)</li><li>Social Security number (US only)</li><li>ID confirmation photo (Germany only)*</li></ul> </td>
    <td ng-bind="tier3Status"></td>
</tr>
<tr>
    <td class="keycol">
        <strong>Tier 4</strong>
        <br>
        Individual High Value Account <i>or</i><br>Corporate Account </td>
    <td>
        <!--Tier 4 Daily Limits Start-->
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Deposit </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{depositTierLimits.Tier4DailyLimit}}"></td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Withdraw </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{withdrawTierLimits.Tier4DailyLimit}}"></td>
            </tr>
            </tbody>
        </table>
        <!--Tier 4 Daily Limits Ends-->
    </td>
    <td>
        <!--Tier 4 Monthly Limits Start-->
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Deposit </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{depositTierLimits.Tier4MonthlyLimit}}"> </td>
            </tr>
            </tbody></table>
        <table class="stats-dots">
            <tbody><tr>
                <td class="k">
                    Withdraw </td>
                <td class="dots"></td>
                <td ng-bind-template="$ {{withdrawTierLimits.Tier4MonthlyLimit}}"> </td>
            </tr>
            </tbody>
        </table>
        <!--Tier 4 Monthly Limits Ends-->
    </td>
    <td>
        <ul><li>If you are interested in a personal or business Tier 4 account, please <a href="https://support.kraken.com/hc/en-us/requests/new">contact support</a>.</li><li>Choose the category "Verification: Tier 4" for your support request.</li></ul> </td>
    <td ng-bind="tier4Status"></td>
</tr>
</tbody>
</table>
<div class="vpad40 center">
    <p><i class="icon-circle-arrow-down"></i> Getting verified is easy - choose your tier(s) and submit the forms below.</p>
    <tabset>
        <tab heading="Tier 1">
            <div ng-show="!tier1Verified">
                <g:render template="/account/getVerified/tier1Form"/>
            </div>
            <div ng-show="tier1Verified">
                <g:render template="/account/getVerified/tier1Details"/>
            </div>

            <div ng-show="tier1ApplySuccessful">
                <g:render template="/account/getVerified/applySuccessful"/>
            </div>
            <div ng-show="tier1ApplyFailure">
                <g:render template="/account/getVerified/applyFailure"/>
            </div>
        </tab>
        <tab heading="Tier 2">
            <div ng-show="tier2ShowProhibition">
                <g:render template="/account/getVerified/tier2Prohibition"/>
            </div>
            <div ng-show="tier2ShowForm">
                <g:render template="/account/getVerified/tier2Form"/>
            </div>
            <div ng-show="tier2Verified">
                <g:render template="/account/getVerified/tier2Details"/>
            </div>
            <div ng-show="tier2ApplySuccessful">
                <g:render template="/account/getVerified/applySuccessful"/>
            </div>
            <div ng-show="tier2ApplyFailure">
                <g:render template="/account/getVerified/applyFailure"/>
            </div>
        </tab>
        <tab heading="Tier 3">
            <div ng-show="tier3ShowProhibition">
                <g:render template="/account/getVerified/tier3Prohibition"/>
            </div>
            <div ng-show="tier3ShowForm">
                <g:render template="/account/getVerified/tier3Form"/>
            </div>
            <div ng-show="tier3Verified">
                <g:render template="/account/getVerified/tier3Details"/>
            </div>
            <div ng-show="tier3ApplySuccessful">
                <g:render template="/account/getVerified/applySuccessful"/>
            </div>
            <div ng-show="tier3ApplyFailure">
                <g:render template="/account/getVerified/applyFailure"/>
            </div>
        </tab>
        <tab heading="Tier 4">
            <div ng-show="tier4ShowProhibition">
                <g:render template="/account/getVerified/tier4Prohibition"/>
            </div>
            <div ng-show="tier4Details">
                <g:render template="/account/getVerified/tier4Details"/>
            </div>
        </tab>
    </tabset>
</div>
<p class="vmarg40bot">*Due to elevated risk of fraud in Germany, all clients resident in Germany and/or funding from a German bank account will require Tier 3 verification and must also provide an ID confirmation photo. An ID confirmation photo is a picture of you holding the ID used for Tier 3 verification next to your face to allow for facial verification of the ID.</p>
</div>
</div>
</div>
