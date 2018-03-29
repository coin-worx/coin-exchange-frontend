# Coin Exchange Frontend

## Icons
## Introduction
## Context
## Problem Statment
## Solution
### Technology Stack 
- [Grails](https://grails.org/): Server side MVC, Backend REST Integration
- [Spock](https://code.google.com/p/spock/): Spock is a testing and specification framework for Java and Groovy applications
- [Selenium](https://code.google.com/p/selenium/): Browser automation framework
- [Geb](http://www.gebish.org/): Geb is a browser automation solution for e2e/functional testing
- [AngularJS](https://docs.angularjs.org/guide/introduction): Client side MVC, DI, Data Binding, etc.
- [Jasmine](https://github.com/pivotal/jasmine): JavaScript testing framework
- [jQuery](http://jquery.com/): A cross-platform JavaScript library designed to simplify the client-side scripting of HTML.
- [Karma](https://github.com/karma-runner/karma): JavaScript unit test runner
- [Protractor](https://github.com/angular/protractor): JavaScript e2e test runner 
- HighCharts: Charting API
- [Istanbul](https://github.com/gotwarlost/istanbul): A JS code coverage tool
- HTML5/CSS3/JS: 
- Grunt: Task manages, needed to handle assets optimization
- [Bower](http://bower.io/): Client-side code package manager
- Yeoman: Used for quickly & easily creating an angularJs based application
#### Backend
#### Frondend
### Testing
#### Grails Unit Tests
  - Grails Unit Tests are kept here: coin-exchange-frontend/test/unit
  - To run Grails Unit Tests: 

#### Grails Integration Tests
  - Grails Integration Tests are kept here: coin-exchange-frontend/test/integration
  - To run Grails Integration Tests: 

#### Grails Functional/E2E Tests
  - Grails Functional/E2E Tests are kept here: 
  - To run Grails Functional/E2E Tests:
 
#### JavaScript/AngularJS Unit Tests
  - JavaScript/AngularJS Unit Tests are kept here: coin-exchange-frontend/test/javascript/unit
  - To run JavaScript/AngularJS Unit Tests: 

#### JavaScript/AngularJS Functional/E2E Tests
  - JavaScript/AngularJS Functional/E2E Tests are kept here: coin-exchange-frontend/test/javascript/e2e
  - To run JavaScript/AngularJS Functional/E2E Tests:
#### Security
#### ScreenShots
## Usage
### Pre Requirements
  - Grails v2.3.8
  - Java v1.6
  - MySql
  - Git
  - Tomcat
### Building
  1. Clone the application from repo: `git clone https://github.com/coin-worx/coin-exchange-frontend.git`
### Running
  1. `grails clean` (To clean the application)
  2. `grails compile` (To compile the application)
  3. `grails run-app` (To run the application)
  4. If above commands are successful then you will see a log on your terminal saying that application can be accessed at: `localhost:8080/coinexchange`.
  5. You have to write following url `localhost:8080/coinexchange` in url browser window and press Enter.
#### Integration with IntelliJ
  1. Go to `coin-exchange-frontend` in console (or terminal)
  2. Run `grails integrate-with --intellij`
  3. In intellij idea _File -> Open_, go to coin-exchange-frontend and open _coin-exchange-frontend.ipr_
  4. Press _Convert_ when IDE will ask.
  5. Run project always from console, not from IDE.
### Logs
  When running locally through `grails run-app`, then logs can be found under this location `...\coin-exchange-frontend\logs`.
