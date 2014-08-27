<div class="span2">
  <ul class="nav nav-list nav-sidebar auto-width vmarg0top hpad10right" id="withdraw-nav">
    <li class="bottom">
      <a href="#/account/funding/depositCurrency?currency=BTC">Bitcoin (BTC)</a>
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

    <div id="deposit-content" %{--ng-show="!showDetails"--}% class="span10" data-locked="0">
        <g:render template="/account/funding/deposit/recentDeposits"/>
    </div>

<div id="otp-popover" class="hidden2">
  <form method="post" autocomplete="off" class="center">
    <input type="password" name="otp" class="input-large" autocomplete="off">

    <p class="control-hint vmarg10bot">Enter the one-time password required by two-factor authentication.</p>
    <button type="submit" class="btn btn-success btn-small center"></button>
  </form>
</div>