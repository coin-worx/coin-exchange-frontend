<div id="topside">
  <div id="ticker-chart-pulldown">
    <div class="loading hidden2">
      <div class="progress progress-info progress-striped active">
        <div class="bar"></div>
      </div>
      <p class="mono">Loading...</p>
    </div>
    <div id="ticker-chart" class="mono hidden2"></div>
    <div id="ticker-chart-control" class="center hidden2 btn-toolbar">
      <div class="btn-group">
        <button autocomplete="off" type="button" class="btn series " value="ha">Heikin-Ashi</button><button class="btn dropdown-toggle" data-toggle="dropdown">
        <span class="caret"></span>
      </button>
        <ul class="dropdown-menu">
          <li><a href="javascript: void(0);" class="active" value="candlestick"><i class="icon icon-ok"></i> Candlestick</a>
          </li><li><a href="javascript: void(0);" class="" value="ohlc"><i class="icon icon-ok"></i> Tick</a>
        </li></ul>
      </div>
      <div class="btn-group">
        <button autocomplete="off" type="button" class="btn series active" value="price">OHLC</button><button class="btn dropdown-toggle" data-toggle="dropdown">
        <span class="caret"></span>
      </button>
        <ul class="dropdown-menu">
          <li><a href="javascript: void(0);" class="active" value="candlestick"><i class="icon icon-ok"></i> Candlestick</a>
          </li><li><a href="javascript: void(0);" class="" value="ohlc"><i class="icon icon-ok"></i> Tick</a>
        </li></ul>
      </div>
      <div class="btn-group">
        <button autocomplete="off" type="button" class="btn plotline active" value="bid">Bid</button>
      </div>
      <div class="btn-group">
        <button autocomplete="off" type="button" class="btn plotline active" value="ask">Ask</button>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="span12">
        <div class="ticker-wrap clearfix">
          <a href="javascript: void(0);" class="btn sparkline"><canvas width="72" height="25" style="display: inline-block; width: 72px; height: 25px; vertical-align: top;"></canvas></a>
          <div id="ticker-top" class="ticker">
            <ul>
              <li class="keyval">
                <div class="val mono" data-val="66100.001" name="last">Ʀ66,100.001</div>
                <div class="key">Last</div>
              </li>
              <li class="keyval">
                <div class="val mono" data-val="77500.000" name="high24">Ʀ77,500.0<span class="deczeros">00</span></div>
                <div class="key">High</div>
              </li>
              <li class="keyval">
                <div class="val mono" data-val="63001.000" name="low24">Ʀ63,001.0<span class="deczeros">00</span></div>
                <div class="key">Low</div>
              </li>
              <li class="keyval">
                <div class="val mono" data-val="12.98" name="volume24">12.98</div>
                <div class="key">24 Hour Volume</div>
              </li>
              <li class="keyval">
                <div class="val mono" data-val="67353.057" name="vwap24">Ʀ67,353.057</div>
                <div class="key">Weighted Avg</div>
              </li>
            </ul>
          </div>
          <div class="select-wrap">
            <input type="hidden" name="pair" value="XBTXRP">
            <div class="dropdown">
              <a id="pairselect-button" class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                <span class="pairtext">XBT/XRP</span>
                <span class="caret"></span>
              </a>
              <ul class="dropdown-menu currencylist" role="menu" aria-labelledby="dLabel" style="z-index:100000;">
                <li class="dropdown-submenu">
                  <a tabindex="-1" href="#">EUR</a>
                  <ul class="dropdown-menu pairlist">
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="EURXDG" data-pair-text="EUR/XDG">EUR/XDG</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="EURXRP" data-pair-text="EUR/XRP">EUR/XRP</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="EURXVN" data-pair-text="EUR/XVN">EUR/XVN</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="LTCEUR" data-pair-text="LTC/EUR">LTC/EUR</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="NMCEUR" data-pair-text="NMC/EUR">NMC/EUR</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTEUR" data-pair-text="XBT/EUR">XBT/EUR</a></li>
                  </ul>
                </li>
                <li class="dropdown-submenu">
                  <a tabindex="-1" href="#">KRW</a>
                  <ul class="dropdown-menu pairlist">
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="KRWXRP" data-pair-text="KRW/XRP">KRW/XRP</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="LTCKRW" data-pair-text="LTC/KRW">LTC/KRW</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="NMCKRW" data-pair-text="NMC/KRW">NMC/KRW</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTKRW" data-pair-text="XBT/KRW">XBT/KRW</a></li>
                  </ul>
                </li>
                <li class="dropdown-submenu">
                  <a tabindex="-1" href="#">LTC</a>
                  <ul class="dropdown-menu pairlist">
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="LTCEUR" data-pair-text="LTC/EUR">LTC/EUR</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="LTCKRW" data-pair-text="LTC/KRW">LTC/KRW</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="LTCUSD" data-pair-text="LTC/USD">LTC/USD</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="LTCXDG" data-pair-text="LTC/XDG">LTC/XDG</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="LTCXRP" data-pair-text="LTC/XRP">LTC/XRP</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTLTC" data-pair-text="XBT/LTC">XBT/LTC</a></li>
                  </ul>
                </li>
                <li class="dropdown-submenu">
                  <a tabindex="-1" href="#">NMC</a>
                  <ul class="dropdown-menu pairlist">
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="NMCEUR" data-pair-text="NMC/EUR">NMC/EUR</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="NMCKRW" data-pair-text="NMC/KRW">NMC/KRW</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="NMCUSD" data-pair-text="NMC/USD">NMC/USD</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="NMCXDG" data-pair-text="NMC/XDG">NMC/XDG</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="NMCXRP" data-pair-text="NMC/XRP">NMC/XRP</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTNMC" data-pair-text="XBT/NMC">XBT/NMC</a></li>
                  </ul>
                </li>
                <li class="dropdown-submenu">
                  <a tabindex="-1" href="#">USD</a>
                  <ul class="dropdown-menu pairlist">
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="LTCUSD" data-pair-text="LTC/USD">LTC/USD</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="NMCUSD" data-pair-text="NMC/USD">NMC/USD</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="USDXDG" data-pair-text="USD/XDG">USD/XDG</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="USDXRP" data-pair-text="USD/XRP">USD/XRP</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="USDXVN" data-pair-text="USD/XVN">USD/XVN</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTUSD" data-pair-text="XBT/USD">XBT/USD</a></li>
                  </ul>
                </li>
                <li class="dropdown-submenu">
                  <a tabindex="-1" href="#">XBT</a>
                  <ul class="dropdown-menu pairlist">
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTEUR" data-pair-text="XBT/EUR">XBT/EUR</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTKRW" data-pair-text="XBT/KRW">XBT/KRW</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTLTC" data-pair-text="XBT/LTC">XBT/LTC</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTNMC" data-pair-text="XBT/NMC">XBT/NMC</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTUSD" data-pair-text="XBT/USD">XBT/USD</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTXDG" data-pair-text="XBT/XDG">XBT/XDG</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTXRP" data-pair-text="XBT/XRP">XBT/XRP</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTXVN" data-pair-text="XBT/XVN">XBT/XVN</a></li>
                  </ul>
                </li>
                <li class="dropdown-submenu">
                  <a tabindex="-1" href="#">XDG</a>
                  <ul class="dropdown-menu pairlist">
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="EURXDG" data-pair-text="EUR/XDG">EUR/XDG</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="LTCXDG" data-pair-text="LTC/XDG">LTC/XDG</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="NMCXDG" data-pair-text="NMC/XDG">NMC/XDG</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="USDXDG" data-pair-text="USD/XDG">USD/XDG</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTXDG" data-pair-text="XBT/XDG">XBT/XDG</a></li>
                  </ul>
                </li>
                <li class="dropdown-submenu">
                  <a tabindex="-1" href="#">XRP</a>
                  <ul class="dropdown-menu pairlist">
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="EURXRP" data-pair-text="EUR/XRP">EUR/XRP</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="KRWXRP" data-pair-text="KRW/XRP">KRW/XRP</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="LTCXRP" data-pair-text="LTC/XRP">LTC/XRP</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="NMCXRP" data-pair-text="NMC/XRP">NMC/XRP</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="USDXRP" data-pair-text="USD/XRP">USD/XRP</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTXRP" data-pair-text="XBT/XRP">XBT/XRP</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XVNXRP" data-pair-text="XVN/XRP">XVN/XRP</a></li>
                  </ul>
                </li>
                <li class="dropdown-submenu">
                  <a tabindex="-1" href="#">XVN</a>
                  <ul class="dropdown-menu pairlist">
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="EURXVN" data-pair-text="EUR/XVN">EUR/XVN</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="USDXVN" data-pair-text="USD/XVN">USD/XVN</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XBTXVN" data-pair-text="XBT/XVN">XBT/XVN</a></li>
                    <li class="pairlink"><a class="currpairs" tabindex="-1" data-pair="XVNXRP" data-pair-text="XVN/XRP">XVN/XRP</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>