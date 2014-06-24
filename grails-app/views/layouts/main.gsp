<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title><g:layoutTitle default="Grails"/></title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <asset:stylesheet href="main.css"/>
  <asset:link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
  <g:layoutHead/>
</head>

<body ng-app="blancrockExchangeApp">
<div id="app-wrap">
  <div id="main">
    <g:render template="/commonTemplates/topSide"/>
    <g:render template="/commonTemplates/navbar"/>
    <g:render template="/commonTemplates/noScript"/>
    <g:layoutBody/>
  </div>
</div>
<g:render template="/commonTemplates/footer"/>

<asset:javascript src="application.js"/>
</body>
</html>
