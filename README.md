# BlancRock Frontend

JIRA project link: [COIN](https://aurorasolutions.atlassian.net/browse/COIN)

## HOW TO RUN:

#### Pre Requirements
  - Grails v2.3.8
  - Java v1.6
  - MySql
  - Git
  - Tomcat

#### How to set up
  1. Clone the application from repo
        git clone git@bitbucket.org:abaziz/coin-exchange-frontend.git

#### How to run application
Now after above given steps you have to go to your application's root folder and run following commands.

  1. `grails clean` (To clean the application)
  2. `grails compile` (To compile the application)
  3. `grails run-app` (To run the application)

#### How to access application?
  1. If above commands are successful then you will see a log on your terminal saying that application can be accessed at: `localhost:8080/coin-exchange-frontend`.
  2. You have to write following url `localhost:8080/coin-exchange-frontend` in url browser window and press Enter.

#### BlancRock on IntelliJ
  1. Go to `coin-exchange-frontend` in console (or terminal)
  2. Run `grails integrate-with --intellij`
  3. In intellij idea _File -> Open_, go to coin-exchange-frontend and open _coin-exchange-frontend.ipr_
  4. Press _Convert_ when IDE will ask.
  5. Run project always from console, not from IDE.

## HOW TO ACCESS LOGS:

- When running locally through `grails run-app`, then logs can be found under this location `...\coin-exchange-frontend\logs`.
