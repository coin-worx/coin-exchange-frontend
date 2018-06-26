<!--
***************************************************************************** 
* Copyright 2016 Aurora Solutions 
* 
*    http://www.aurorasolutions.io 
* 
* Aurora Solutions is an innovative services and product company at 
* the forefront of the software industry, with processes and practices 
* involving Domain Driven Design(DDD), Agile methodologies to build 
* scalable, secure, reliable and high performance products.
* 
* Coin Exchange is a high performance exchange system specialized for
* Crypto currency trading. It has different general purpose uses such as
* independent deposit and withdrawal channels for Bitcoin and Litecoin,
* but can also act as a standalone exchange that can be used with
* different asset classes.
* Coin Exchange uses state of the art technologies such as ASP.NET REST API,
* AngularJS and NUnit. It also uses design patterns for complex event
* processing and handling of thousands of transactions per second, such as
* Domain Driven Designing, Disruptor Pattern and CQRS With Event Sourcing.
* 
* Licensed under the Apache License, Version 2.0 (the "License"); 
* you may not use this file except in compliance with the License. 
* You may obtain a copy of the License at 
* 
*    http://www.apache.org/licenses/LICENSE-2.0 
* 
* Unless required by applicable law or agreed to in writing, software 
* distributed under the License is distributed on an "AS IS" BASIS, 
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
* See the License for the specific language governing permissions and 
* limitations under the License. 
*****************************************************************************
-->


<div ng-controller="recentDepositsController">
<div class="span2">
  <ul class="nav nav-list nav-sidebar auto-width vmarg0top hpad10right" id="withdraw-nav">
    <li class="bottom">
      <a href="#/account/funding/depositCurrency?currency=BTC">Bitcoin (BTC)</a>
    </li>
    <li class="bottom">
        <a href="#/account/funding/depositCurrency?currency=LTC">Litecoin (LTC)</a>
    </li>
    %{--<li class="">
      <a href="/u/funding/deposit?asset=XXRP">Ripple (XRP)</a>
    </li>
    <li class="">
      <a href="/u/funding/deposit?asset=XLTC">Litecoin (LTC)</a>
    </li>
    <li class="">
      <a href="/u/funding/deposit?asset=XNMC">Namecoin (NMC)</a>
    </li>
    <li class="">
      <a href="/u/funding/deposit?asset=XXVN">Ven (XVN)</a>
    </li>
    <li class="bottom">
      <a href="/u/funding/deposit?asset=XXDG">Dogecoin (XDG)</a>
    </li>--}%
  </ul>
</div>

    <div id="deposit-content" class="span10" data-locked="0" ng-show="showRecentDeposits">
        <g:render template="/account/funding/deposit/recentDeposits"/>
    </div>

<div id="deposit-details-content" class="span10" data-locked="0" ng-show="showRecentDepositDetails">
    <g:render template="/account/funding/deposit/recentDepositDetails"/>
</div>

<div id="otp-popover" class="hidden2">
  <form method="post" autocomplete="off" class="center">
    <input type="password" name="otp" class="input-large" autocomplete="off">

    <p class="control-hint vmarg10bot">Enter the one-time password required by two-factor authentication.</p>
    <button type="submit" class="btn btn-success btn-small center"></button>
  </form>
</div>
</div>