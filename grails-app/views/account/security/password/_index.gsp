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


<div ng-controller="passwordController">
<h4 class="title vmarg20bot">Change Password</h4>

<form class="jq-validate-form form-horizontal large form-control-left vpad10top"
      method="post" autocomplete="off" name="changePasswordForm" ng-submit="changePassword(changePasswordForm)">
  <div class="control-group">
    <label class="control-label">Current Password</label>

    <div class="controls">
      <input type="password" value="" autocomplete="off" name="opassword"
             style="background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3QsPDiIqO1Am6gAAAb1JREFUOMvNkk1rU0EUhp8zd0gCrdKFNgiCFatiIYgUKdW6aikuhIJF6kJcdFFEXAclzM0XJH9A6EL8BSoqZlEQCl0GEQU/qApdiYouKmgUbu7luGgC+boUuvLdvcPMc86c88J/p2w2e9g5d7btnXNTzrlM3H3TaZxzt1Kp1KaI3AcEEBFZFZFXvu9XBgFsjw9EZAjIOOeWVDUUkTMAqvppEEB6ve/7GyJyAfioqpGInALWi8XibCwgl8sdMcbsbzabf621Y8aYNRHxWpUjYFFVv4vIcBiGPyqVyuuuL1hrbwM3kslkf4Ud0BORnWattfeAld4hmr1uTVrTn1TVg6r6U0RGPc97DJh21V0Bncrn88+BOVV9Y4zp2v/w0RkWzo2w8aDG52BwDq4Ccy1b7iInJrh2fZbx8QxjQzFBAk4Aoaq+K5VKDztec3H5MmkAIppxSSyXy6UgCE5HUXQT0Pb58UvLTB34Qm1tE4CwEZ9EqtXq++6TUaYn0xD9YuZ8Gkgwv7LA1t2nbA8C9OsPH16+peGFpA6dZGQfbH/9RiOug379pl57RB1ITCxy58oxXjyrE8StsVOFQkF3w/8DCTuL1wm1OYIAAAAASUVORK5CYII=); background-attachment: scroll; background-position: 100% 50%; background-repeat: no-repeat no-repeat;"
      ng-model="oldPassword">

      <p class="control-hint">Enter your current password.</p>
    </div>
  </div>

  <div class="control-group">
    <label class="control-label">New Password</label>

    <div class="controls">
      <input type="password" value="" autocomplete="off" name="password"
             style="background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAACIUlEQVQ4EX2TOYhTURSG87IMihDsjGghBhFBmHFDHLWwSqcikk4RRKJgk0KL7C8bMpWpZtIqNkEUl1ZCgs0wOo0SxiLMDApWlgOPrH7/5b2QkYwX7jvn/uc//zl3edZ4PPbNGvF4fC4ajR5VrNvt/mo0Gr1ZPOtfgWw2e9Lv9+chX7cs64CS4Oxg3o9GI7tUKv0Q5o1dAiTfCgQCLwnOkfQOu+oSLyJ2A783HA7vIPLGxX0TgVwud4HKn0nc7Pf7N6vV6oZHkkX8FPG3uMfgXC0Wi2vCg/poUKGGcagQI3k7k8mcp5slcGswGDwpl8tfwGJg3xB6Dvey8vz6oH4C3iXcFYjbwiDeo1KafafkC3NjK7iL5ESFGQEUF7Sg+ifZdDp9GnMF/KGmfBdT2HCwZ7TwtrBPC7rQaav6Iv48rqZwg+F+p8hOMBj0IbxfMdMBrW5pAVGV/ztINByENkU0t5BIJEKRSOQ3Aj+Z57iFs1R5NK3EQS6HQqF1zmQdzpFWq3W42WwOTAf1er1PF2USFlC+qxMvFAr3HcexWX+QX6lUvsKpkTyPSEXJkw6MQ4S38Ljdbi8rmM/nY+CvgNcQqdH6U/xrYK9t244jZv6ByUOSiDdIfgBZ12U6dHEHu9TpdIr8F0OP692CtzaW/a6y3y0Wx5kbFHvGuXzkgf0xhKnPzA4UTyaTB8Ph8AvcHi3fnsrZ7Wore02YViqVOrRXXPhfqP8j6MYlawoAAAAASUVORK5CYII=); background-attachment: scroll; background-position: 100% 50%; background-repeat: no-repeat no-repeat;"
             ng-model="newPassword">

      <p class="control-hint">Enter your new password.</p>
    </div>
  </div>

  <div class="control-group">
    <label class="control-label">Confirm New Password</label>

    <div class="controls">
      <input type="password" value="" autocomplete="off" name="cpassword"
             style="background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAACIUlEQVQ4EX2TOYhTURSG87IMihDsjGghBhFBmHFDHLWwSqcikk4RRKJgk0KL7C8bMpWpZtIqNkEUl1ZCgs0wOo0SxiLMDApWlgOPrH7/5b2QkYwX7jvn/uc//zl3edZ4PPbNGvF4fC4ajR5VrNvt/mo0Gr1ZPOtfgWw2e9Lv9+chX7cs64CS4Oxg3o9GI7tUKv0Q5o1dAiTfCgQCLwnOkfQOu+oSLyJ2A783HA7vIPLGxX0TgVwud4HKn0nc7Pf7N6vV6oZHkkX8FPG3uMfgXC0Wi2vCg/poUKGGcagQI3k7k8mcp5slcGswGDwpl8tfwGJg3xB6Dvey8vz6oH4C3iXcFYjbwiDeo1KafafkC3NjK7iL5ESFGQEUF7Sg+ifZdDp9GnMF/KGmfBdT2HCwZ7TwtrBPC7rQaav6Iv48rqZwg+F+p8hOMBj0IbxfMdMBrW5pAVGV/ztINByENkU0t5BIJEKRSOQ3Aj+Z57iFs1R5NK3EQS6HQqF1zmQdzpFWq3W42WwOTAf1er1PF2USFlC+qxMvFAr3HcexWX+QX6lUvsKpkTyPSEXJkw6MQ4S38Ljdbi8rmM/nY+CvgNcQqdH6U/xrYK9t244jZv6ByUOSiDdIfgBZ12U6dHEHu9TpdIr8F0OP692CtzaW/a6y3y0Wx5kbFHvGuXzkgf0xhKnPzA4UTyaTB8Ph8AvcHi3fnsrZ7Wore02YViqVOrRXXPhfqP8j6MYlawoAAAAASUVORK5CYII=); background-attachment: scroll; background-position: 100% 50%; background-repeat: no-repeat no-repeat;"
             ng-model="newPasswordConfirm">

      <p class="control-hint">Reenter your new password.</p>
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
      <button class="btn btn-success btn-large" type="submit" autocomplete="off">Change Password</button>
      <input type="hidden" name="action" value="password">
    </div>
  </div>
  <input type="hidden" name="tab" value="password">
  <input type="hidden" name="csrftoken"
         value="YFu0sCw6Dvs9KTlaFIPghtD65GB_ofZgsXhOzXxmhTENwkF7iyV0wnBWlVYIDX5of0Tk4msO6NJqmP2Hu91EiQ--">
</form>
</div>