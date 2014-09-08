<div class="tab-pane active">
    <div class="row">
        <div class="span12">
            <div class="vmarg20bot">
                <h4 class="title">Change Notifications</h4>
                <p>We recommend that you subscribe to administrative emails to stay informed of important changes that may affect you.</p>
            </div>
            <form class="jq-validate-form form-horizontal large form-control-left vpad10top"
                  method="post" name="notificationsForm" ng-submit="submitNotificationsForm(notificationForm)">
                <div class="control-group">
                    <label class="control-label">Administrative Emails</label>
                    <div class="controls">
                        <input name="flags[email-admin]" value="1" checked="checked" type="checkbox" ng-model="adminEmails">
                        <span class="control-hint">Non-critical updates that may affect your Kraken account (e.g., new features or services, policy updates, etc.)</span>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Newsletter Emails</label>
                    <div class="controls">
                        <input name="flags[email-newsletter]" value="1" checked="checked" type="checkbox" ng-model="newsLetterEmails">
                        <span class="control-hint">Helpful information that you may find interesting (e.g., blog posts, analysis and interesting facts about the Bitcoin industry, special offers, etc.)</span>
                    </div>
                </div>
                <div class="center vpad10" ng-show="getErrors()">
                    <div class="alert alert-block alert-error" ng-bind="getErrors()"></div>
                </div>
                <div class="center vpad10" ng-show="getResponse()">
                    <div class="alert alert-block alert-success" ng-bind="getResponse()"></div>
                </div>
                <div class="control-group vpad20top">
                    <div class="controls">
                        <button class="btn btn-success btn-large" type="submit" autocomplete="off">Update Notifications</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>