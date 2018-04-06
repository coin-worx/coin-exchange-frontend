# Coin Exchange Frontend

## Icons
## Introduction
The main aim of the platform is to provide an exchange facility for the up and coming digital currencies including Bitcoin, Litecoin and the ability to trade them against one another. The platform will be designed to be used by retail and institutional traders and investors. The platform will be available internationally as native app for iOS or Android
## Context
The product serves as a platform for trading different digital currencies against one another. The digital currencies available for trading are:
- Bitcoin (BTC)
- Litecoin (LTC)

The platform will mostly be a self contained product with not much integration with external system(s). However, the billing module will have to support some different mechanisms for depositing and withdrawing money into user accounts that may include:
- Bitcoin deposit / withdrawal
- Litecon deposit / withdrawal

## Problem Statment
## Solution
Our goal is to build a mobile based trading platform for crypto currencies and with the ability to buy and sell the digital currency against one another. It will be an independent exchange servicing both retail and institutional customers with starting with basic features like market & limit orders and then moving onto more complex ones.

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
Backend code for coin exchange is kept here: https://github.com/coin-worx/coin-exchange-backend
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
  
## Help

**Got a question?** 
File a GitHub [issue](https://github.com/coin-worx/coin-exchange-frontend/issues), send us an email at info@aurorasolutions.io or reach out to us on social media [Twitter](https://twitter.com/aurora__sol?lang=en), [Facebook](https://www.facebook.com/AuroraSolutions/)

## Contributing 

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/coin-worx/coin-exchange-frontend/issues) to report any bugs or file feature requests.

#### Developing

PRs are welcome. In general, we follow the "fork-and-pull" Git workflow.

 1. **Fork** the repo on GitHub
 2. **Clone** the project to your own machine
 3. **Commit** changes to your own branch
 4. **Push** your work back up to your fork
 5. Submit a **Pull request** so that we can review your changes

NOTE: Be sure to merge the latest from "upstream" before making a pull request!

## About
The project is created and maintained by [Aurora Solutions](https://www.aurorasolutions.io/). Like it? Please let us know at info@aurorasolutions.io

See our [other projects](https://www.aurorasolutions.io/#portfolio)
  
