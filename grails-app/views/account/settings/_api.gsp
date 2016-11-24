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


<div class="tab-content" ng-controller="settingsApiController">
<div class="tab-pane active">
<div class="row">
<div class="span12">
<div id="api-wrap" class="slider" data-locked="0">
<div style="width: 1900px;" class="transfer">
<div style="width: 950px;" class="frame">
    <div style="display: block;" id="table-api-wrap" class="hidden2">
        <div class="clearfix vmarg10bot">
            <h4 class="title pull-left hmarg40right">API Key Management</h4>
            <div style="display: none;" class="pull-left vpad5 vmarg10top vmarg0bot alert alert-block alert-error hidden2"></div>
        </div>
        <div id="table-api_wrapper" class="dataTables_wrapper form-inline" role="grid"><div class="dataTables_table_wrapper"><table class="table table-hover table-striped dataTable" id="table-api">
            <thead>
            <tr role="row">
                <th ng-click="updateSorting('KeyDescription')" class="lalign nw"
                    ng-class="getSortingClass('KeyDescription')" style="width: 160px;">Key Description</th>
                <th ng-click="updateSorting('ExpirationDate')" class="lalign nw"
                    ng-class="getSortingClass('ExpirationDate')" style="width: 120px;">Key Expiration</th>
                <th ng-click="updateSorting('CreationDateTime')" class="lalign nw"
                    ng-class="getSortingClass('CreationDateTime')" style="width: 80px;">Created</th>
                <th ng-click="updateSorting('LastModified')" class="ralign"
                    ng-class="getSortingClass('LastModified')" style="width: 50px;">Last Modified</th>
                <th class="ralign center" style="width: 35px;">&nbsp;</th>
            </tr>
            </thead>

            <tbody role="alert" aria-live="polite" aria-relevant="all">
            <tr ng-repeat="securityKey in filteredSecurityKeysList"
                ng-class="{even: $even, odd: $odd}" ng-cloak>
                <td class="lalign" tab-right-click="navigateToRecentWithdrawDetails()" ng-click="navigateToRecentWithdrawDetails(withdraw)">
                    <a href="">{{securityKey.KeyDescription | limitTo : 8}}</a>
                </td>
                <td class="lalign" ng-bind="securityKey.ExpirationDate"></td>
                <td class="ralign" ng-bind="securityKey.CreationDateTime"></td>
                <td class="ralign" ng-bind="securityKey.LastModified"></td>
                <td class="center">
                    <a name="cancel" ng-if="withdraw.Status == 'Pending'" ng-click="cancelWithdraw(withdraw)" class="btn btn-danger thin tt btn-cancel">
                        <i class="icon-remove icon-white"></i>
                    </a>
                </td>
            </tr>

            <tr class="odd" ng-hide="securityKeysList.length">
                <td valign="top" colspan="5" class="dataTables_empty">No User Generated Security Keys yet.</td>
            </tr>
            </tbody>
        </table>
            <div ng-cloak>
                <div class="pull-right">
                    <pagination total-items="totalItems" ng-model="currentPage" num-pages="numPages"
                                previous-text="&lsaquo;" next-text="&rsaquo;" first-text="&laquo;" last-text="&raquo;"
                                max-size="maxSize" class="pagination-sm" ng-change="pageChanged()"
                                boundary-links="true" rotate="false"></pagination>
                </div>
            </div>
            <div class="btn-toolbar pull-left">
                <button autocomplete="off" type="button" class="btn btn-primary show-generate hmarg10right"
                        ng-click="navigateToGenerateNewKey()">Generate New Key</button>

                <span style="display: none;" class="key-limit-warning ib text hidden2">Maximum limit of 16 keys reached.</span>
            </div>
        </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>