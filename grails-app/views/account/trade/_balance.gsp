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


<div class="row vmarg40bot tradebalance-wrap">
  <div class="span12">
    <div class="row stats-dots-wrap vpad5top">
      <div class="span6">
        <div class="hpad20right">
          %{--<h4 class="title">Trade Balances</h4>--}%
          %{--<table class="stats-dots">
            <tbody><tr>
              <td class="k">Trade Balance</td>
              <td class="dots"></td>
              <td name="tradebalance" class="mono">Ʀ20,514.44900</td>
            </tr>
            <tr>
              <td colspan="3" class="control-hint ralign">Total combined currency balance.</td>
            </tr>
            </tbody></table>
          <table class="stats-dots">
            <tbody><tr>
              <td class="k">Equity</td>
              <td class="dots"></td>
              <td name="equity" class="mono">Ʀ20,514.44900</td>
            </tr>
            <tr>
              <td colspan="3" class="control-hint ralign">Trade balance combined with unrealized profit/loss.</td>
            </tr>
            </tbody></table>
          <table class="stats-dots">
            <tbody><tr>
              <td class="k">Initial Margin</td>
              <td class="dots"></td>
              <td name="margin" class="mono">Ʀ0.00000000</td>
            </tr>
            <tr>
              <td colspan="3" class="control-hint ralign">Total initial margin amount of open positions.</td>
            </tr>
            </tbody></table>
          <table class="stats-dots">
            <tbody><tr>
              <td class="k">Free Margin</td>
              <td class="dots"></td>
              <td name="freemargin" class="mono">Ʀ20,514.44900</td>
            </tr>
            <tr>
              <td colspan="3"
                  class="control-hint ralign">Usable margin balance. Equal to equity minus margin balance.</td>
            </tr>
            </tbody></table>
          <table class="stats-dots">
            <tbody><tr>
              <td class="k">Margin Level</td>
              <td class="dots"></td>
              <td name="marginlevel" class="mono">——</td>
            </tr>
            <tr>
              <td colspan="3" class="control-hint ralign">Percentage of available margin.</td>
            </tr>
            </tbody></table>--}%
          %{--<p>Currently not available</p>--}%
        </div>
      </div>

      <div class="span6">
        <div class="hpad20left">
          %{--<h4 class="title">Position Valuation</h4>--}%
          %{--<table class="stats-dots">
            <tbody><tr>
              <td class="k">Opening Cost</td>
              <td class="dots"></td>
              <td name="unrealized-cost" class="mono">Ʀ0.00000000</td>
            </tr>
            <tr>
              <td colspan="3" class="control-hint ralign">Original cost of all open positions.</td>
            </tr>
            </tbody></table>
          <table class="stats-dots">
            <tbody><tr>
              <td class="k">Current Valuation</td>
              <td class="dots"></td>
              <td name="unrealized-value" class="mono">Ʀ0.00000000</td>
            </tr>
            <tr>
              <td colspan="3" class="control-hint ralign">Paper valuation of all open positions.</td>
            </tr>
            </tbody></table>
          <table class="stats-dots">
            <tbody><tr>
              <td class="k">Profit/Loss</td>
              <td class="dots"></td>
              <td class="mono"><span name="unrealized">Ʀ0.00000000</span> <small
                  name="unrealized-pct">(0.00%)</small></td>
            </tr>
            <tr>
              <td colspan="3" class="control-hint ralign">Paper profit/loss of all open positions.</td>
            </tr>
            </tbody></table>--}%
          %{--<p>Currently not available</p>--}%
        </div>
      </div>
    </div>
  </div>
</div>