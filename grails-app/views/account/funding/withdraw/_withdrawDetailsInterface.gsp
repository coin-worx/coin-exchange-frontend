<div class="span2" ng-controller="withdrawDetailsController">
    <ul class="nav nav-list nav-sidebar auto-width vmarg0top hpad10right" id="withdraw-nav">
        <li class="" ng-click="setCurrency()">
            <a href="#/account/funding/withdrawDetails?currency=BTC">Bitcoin (BTC)</a>
        </li>
        <li class="" ng-click="setCurrency()">
            <a href="#/account/funding/withdrawDetails?currency=LTC">Litecoin (LTC)</a>
        </li>
        %{--<li class="">
          <a href="/u/funding/withdraw?asset=XXRP">Ripple (XRP)</a>
        </li>
        <li class="">
          <a href="/u/funding/withdraw?asset=XLTC">Litecoin (LTC)</a>
        </li>
        <li class="">
          <a href="/u/funding/withdraw?asset=XNMC">Namecoin (NMC)</a>
        </li>
        <li class="">
          <a href="/u/funding/withdraw?asset=XXVN">Ven (XVN)</a>
        </li>
        <li class="bottom">
          <a href="/u/funding/withdraw?asset=XXDG">Dogecoin (XDG)</a>
        </li>--}%
    </ul>
</div>
<div id="withdraw-content" class="span10" data-locked="0">
    <g:render template="/account/funding/withdraw/withdrawDetails"/>
</div>
</div>