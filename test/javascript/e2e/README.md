#End 2 End Testing (Protractor)
To run the end-2-end tests against the application you use [Protractor](https://github.com/angular/protractor).

We use End to End tests to ensure that the application as a whole operates as expected. End to End tests are designed to test the whole client side application, in particular that the views are displaying and behaving correctly. It does this by simulating real user interaction with the real application running in the browser.

The e2e tests are kept in the test/javascript/e2e directory.

## Starting the Web Server
In either case you will need the application to be running via the web-server.
From the root folder of the repository run:

```
npm start
```

The application should now be available at `http://localhost:8000/app/index.html`

## Testing with Protractor

The project is configured to use Protractor to run the End to End tests for the application. Protractor relies upon a set of drivers to allow it to interact with the browser. You can install these drivers by running:

As a one-time setup, download webdriver.
```
npm run update-webdriver
```

Start the Protractor test runner using the e2e configuration:

```
npm run protractor
```

Protractor will read the configuration file at test/protractor-conf.js. This configuration tells Protractor to:

  - open up a Chrome browser and connect it to the application
  - execute all the End to End tests in this browser
  - report the results of these tests in the terminal/command line window
  - close down the browser and exit

It is good to run the end to end tests whenever you make changes to the HTML views or want to check that the application as a whole is executing correctly. It is very common to run End to End tests before pushing a new commit of changes to a remote repository.
