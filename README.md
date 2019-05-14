[![GitHub release](https://img.shields.io/github/release/coin-worx/coin-exchange-frontend.svg?style=flat-square)](https://github.com/coin-worx/coin-exchange-frontend/releases) [![GitHub (pre-)release](https://img.shields.io/github/release/coin-worx/coin-exchange-frontend/all.svg?style=flat-square)](https://github.com/coin-worx/coin-exchange-frontend/releases/tag/v0.3) [![GitHub issues](https://img.shields.io/github/issues/coin-worx/coin-exchange-frontend.svg?style=flat-square)](https://github.com/coin-worx/coin-exchange-frontend/issues) [![GitHub top language](https://img.shields.io/github/languages/top/coin-worx/coin-exchange-frontend.svg?style=flat-square)](https://github.com/coin-worx/coin-exchange-frontend) [![GitHub watchers](https://img.shields.io/github/watchers/coin-worx/coin-exchange-frontend.svg?style=flat-square&label=Watch)](https://github.com/coin-worx/coin-exchange-frontend/watchers) [![GitHub stars](https://img.shields.io/github/stars/coin-worx/coin-exchange-frontend.svg?style=flat-square&label=Stars)](https://github.com/coin-worx/coin-exchange-frontend/stargazers) [![GitHub forks](https://img.shields.io/github/forks/coin-worx/coin-exchange-frontend.svg?style=flat-square&label=Fork)](https://github.com/coin-worx/coin-exchange-frontend/network/members)

## IMPORTANT ##
This is an old project and isn't being actively maintained. Some of the libraries have since been deprecated and this may cause some of the dependencies to fail. We're not providing any support for this project anymore.

# Coin Exchange Frontend

## Introduction
The main aim of the platform is to provide a web based exchange facility for the up and coming digital currencies including Bitcoin, Litecoin and the ability to trade them against standard fiat currencies. The platform has been designed to be used by retail and institutional traders and investors. The platform will be available internationally through web based platform and will be accessed using a web browser on a computer or mobile device.
## Context
The product serves as a platform for trading different digital currencies for different fiat currencies. The digital currencies available for trading are going to be:
- Bitcoin (BTC)
- Litecoin (LTC)

The major fiat currencies available for trading are going to be:
- US Dollar (USD)
- Euro (EUR)
- Sterling Pound (GBP)
- Australian Dollar (AUD)
- Swiss Franc (CHF)
- Japanese Yen (JPY)

The platform is a self contained product with not much integration with external system(s). However, the billing module will have to support some different mechanisms for depositing money into user accounts that may include:
- Paypal deposit
- Bank/wire transfer deposit
- Bitcoin deposit

## Problem Statment
Cryptocurrency market has been on rise in the recent years and has become a popular financial entity. The crypto market is decentralized it's not being controlled by any single authority offering more control to the users. Some of the cryptocurrencies can also be used by setting a fixed supply cap making them more imune to inflation. This makes the cryptocurrency market highly profitable.
## Solution
To gain profit from cryptocurrency market apart from investing in trading cryptocurrencies itself one can take advantage from market liquidity by creating their own cryptocurrency exchange. Creating a cryptocurrency exchange offers the advantage of being a part of the cyrpto market itself and one can take advantage of the transaction fees to generate revenue.

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
#### Infrastructure
Docker file for coin-exchange front end is kept here: [coin-exchange-frontend/Dockerfile](https://github.com/coin-worx/coin-exchange-frontend/blob/improvement/enable_working/Dockerfile)

To generate docker image for coin-exchange front end. Follow the given steps
1. Go to `coin-exchange-frontend` in console (or terminal)
2. Run `grails war`
3. To build docker image run `docker build -t frontend -f Dockerfile .`
4. To run docker image run `docker run --net=host -p 8080:8080 -t frontend:latest `

### Testing
#### Unit Tests
Unit Tests details are kept here: [coin-exchange-frontend/test/javascript/unit](https://github.com/coin-worx/coin-exchange-frontend/tree/master/test/javascript/unit)

### Screen Shots
#### Market Data
![Market Data Spread](/../screenShots/screenShots/MarketData_SpreadScreenPortion.PNG?raw=true "Market Data Spread")
![Market Data Depth](/../screenShots/screenShots/MarketData_DepthScreenPortion.PNG?raw=true "Market Data Depth")

#### Orders
##### New Order
![New Order with Open Orders view](/../screenShots/screenShots/Account_Trade_NewOrder_Screen_With_NewAndOpenOrders.PNG?raw=true "New Order with Open Orders view")

![New Order with OrderBook view](/../screenShots/screenShots/Account_Trade_NewOrder_Screen_With_OrderBook.PNG?raw=true "New Order with OrderBook view")

##### Orders List
![Orders List](/../screenShots/screenShots/Account_Trade_Orders_Screen.PNG?raw=true "Orders List")

##### Individual Order Details
![Individual Order](/../screenShots/screenShots/Account_Trade_IndividualOrder_Screen.PNG?raw=true "Individual Order")

#### Trades
##### Overview
![Trades Overview](/../screenShots/screenShots/Account_Trade_Overview_Screen.PNG?raw=true "Trades Overview")

##### Trades List
![Trades List](/../screenShots/screenShots/Account_Trade_Trades_Screen.PNG?raw=true "Trades List")

##### Individual Trade Details
![Individual Trade](/../screenShots/screenShots/Account_Trade_IndividualTrade_Screen.PNG?raw=true "Individual Trade")

#### History
##### Ledger
![History Ledger](/../screenShots/screenShots/Account_History_Ledgers_Screen.PNG?raw=true "History Ledger")

##### Closed Orders
![History Closed Order](/../screenShots/screenShots/Account_History_ClosedOrders_Screen.PNG?raw=true "History Closed Order")

##### Trades
![History Trades](/../screenShots/screenShots/Account_History_Trades_Screen.PNG?raw=true "History Trades")

#### Deposit/Withdrawl
![Deposit](/../screenShots/screenShots/DepositScreen.PNG?raw=true "Deposit")
![Withdrawal](/../screenShots/screenShots/WithdrawScreen.PNG?raw=true "Withdrawal")

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
  
