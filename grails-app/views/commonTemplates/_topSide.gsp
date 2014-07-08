<div id="topside">
  <div id="ticker-chart-pulldown">
    <div class="loading">
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
            %{--<script src="http://code.highcharts.com/modules/exporting.js"></script>--}%
            <script type="text/javascript" src="//canvg.googlecode.com/svn/trunk/canvg.js"></script>
            <script type="text/javascript" src="http://canvg.googlecode.com/svn/trunk/rgbcolor.js"></script>
            <div id="ohlcSilder" class="slideable" style="width: 1000px; height: 420px; margin: 0 auto" ng-controller="OhlcController">
                <highchart id="ohlcChart" config="ohlcChartConfig"></highchart>
            </div>
            <a ng-click="loadOhlc()" slide-toggle="#ohlcSilder" class="btn sparkline" ng-controller="OhlcController">
                <canvas id="ohlcCanvas" width="72" height="25" style="display: inline-block; width: 72px; height: 25px; vertical-align: top;">
                </canvas>
            </a>

          <div id="ticker-top" class="ticker" ng-controller="TickerController">
            <ul>
              <li class="keyval">
                <div class="val mono" data-val="66100.001" name="last" ng-class="{'noalign': TradePrice.ChangeColor}" ng-bind="TradePrice.Value"></div>
                <div class="key">Last</div>
              </li>
              <li class="keyval">
                <div class="val mono" data-val="77500.000" name="high24" ng-class="{'noalign': TodaysHigh.ChangeColor}" ng-bind="TodaysHigh.Value"><span class="deczeros">00</span></div>
                <div class="key">High</div>
              </li>
              <li class="keyval">
                <div class="val mono" data-val="63001.000" name="low24" ng-class="{'noalign': TodaysLow.ChangeColor}" ng-bind="TodaysLow.Value"><span class="deczeros">00</span></div>
                <div class="key">Low</div>
              </li>
              <li class="keyval">
                <div class="val mono" data-val="12.98" name="volume24" ng-class="{'noalign': Last24HourVolume.ChangeColor}" ng-bind="Last24HourVolume.Value"></div>
                <div class="key">24 Hour Volume</div>
              </li>
              <li class="keyval">
                <div class="val mono" data-val="67353.057" name="vwap24" ng-class="{'noalign': TodaysVolumeWeight.ChangeColor}" ng-bind="TodaysVolumeWeight.Value"></div>
                <div class="key">Weighted Avg</div>
              </li>
            </ul>
          </div>
          <div class="select-wrap" ng-controller="CurrencyPairsController">
            <input type="hidden" name="pair" value="XBTXRP" ng-bind="currencyPairs">
            <div class="dropdown">
              <a id="pairselect-button" class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                <span class="pairtext" ng-bind="currencyPairs[0].CurrencyPairName"></span>
                <span class="caret"></span>
              </a>
              <ul class="dropdown-menu currencylist" role="menu" aria-labelledby="dLabel" style="z-index:100000;">
                <li class="dropdown-submenu" ng-repeat="currency in currencyPairs">
                  <a tabindex="-1" href="#" ng-bind="currency.BaseCurrency"></a>
                  <ul class="dropdown-menu pairlist">
                    <li class="pairlink" ng-repeat="currencyInner in currencyPairs">
                        <a class="currpairs" tabindex="-1" ng-if="currencyInner.BaseCurrency == currency.BaseCurrency" ng-bind="currencyInner.CurrencyPairName"></a>
                    </li>
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