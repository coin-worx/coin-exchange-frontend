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


<div class="tab-pane" id="order-open-order">
  <div class="vpad10 alert alert-block alert-error hidden2"></div>
  <div id="DataTables_Table_2_wrapper" class="dataTables_wrapper form-inline" role="grid"><div class="row"><div class="span4"></div><div class="span4 offset1"></div><div id="DataTables_Table_2_processing" class="dataTables_processing" style="visibility: hidden;">Loading...</div></div><table class="table table-hover table-striped dataTable" id="DataTables_Table_2" aria-describedby="DataTables_Table_2_info">
    <thead>
    <tr role="row"><th class="lalign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" style="width: 55px;" aria-label="Order: activate to sort column ascending">Order</th><th class="lalign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" style="width: 165px;" aria-label="Order Type: activate to sort column ascending">Order Type</th><th class="lalign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" style="width: 50px;" aria-label="Pair: activate to sort column ascending">Pair</th><th class="ralign nw sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" style="width: 80px;" aria-label="Price: activate to sort column ascending">Price</th><th class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" style="width: 115px;" aria-label="Volume Rem.: activate to sort column ascending">Volume Rem.</th><th class="ralign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" style="width: 115px;" aria-label="Cost Rem.: activate to sort column ascending">Cost Rem.</th><th class="lalign sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" style="width: 65px;" aria-label="Status: activate to sort column ascending">Status</th><th class="lalign nw sorting_desc" role="columnheader" tabindex="0" aria-controls="DataTables_Table_2" rowspan="1" colspan="1" style="width: 160px;" aria-sort="descending" aria-label="Opened: activate to sort column ascending">Opened</th><th class="ralign sorting_disabled center" role="columnheader" rowspan="1" colspan="1" style="width: 35px;" aria-label="&amp;nbsp;">&nbsp;</th></tr>
    </thead>

    <tfoot>
    <tr><th class="nw" rowspan="1" colspan="1"></th><th class="nw" rowspan="1" colspan="1"></th><th class="lalign" rowspan="1" colspan="1"></th><th class="nw ralign" rowspan="1" colspan="1"></th><th class="ralign" rowspan="1" colspan="1"></th><th class="ralign" rowspan="1" colspan="1"></th><th rowspan="1" colspan="1"></th><th class="nw" rowspan="1" colspan="1"></th><th class="center" rowspan="1" colspan="1"></th></tr>
    </tfoot>
    <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="odd"><td valign="top" colspan="9" class="dataTables_empty">No orders currently available.</td></tr></tbody></table><div class="row"><div class="span3"><div class="dataTables_info" id="DataTables_Table_2_info"></div></div><div class="span5 offset1"></div></div></div>
</div>