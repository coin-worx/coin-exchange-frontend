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


<div id="account-tab-data" class="pull-right multiline" ng-controller="RefreshDataController">
    <div class="ib">
        <div>
            <span class="muted2 key">Current time:</span>
            <span id="local-clock" class="val" ng-bind="currentTime"></span>
        </div>
        <div>
            <span class="muted2 key">Last Updated:</span>
            <span class="order-data-lastupdate val manrefresh-last" ng-style="customStyle.style" ng-bind="lastUpdatedSeconds"></span>
        </div>
    </div>
    <div class="ib hpad20left top">
        <button class="manrefresh-btn btn btn-primary" autocomplete="off" title="Refresh Data" ng-click="reload()">
            <i class="icon icon-refresh icon-white" style="display: inline;">

            </i><img class="hidden2 spinner" src="/img/spinner-white.gif" alt="" style="display: none;"></button>

    </div>
</div>