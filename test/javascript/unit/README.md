#Unit Testing (Karma)
To run the unit tests against the application you use [Karma](https://github.com/karma-runner/karma).

The unit tests are kept in the test/javascript/unit directory.

## Testing with Karma

The project is configured to use Karma to run the unit tests for the application. Start Karma by running:

```
npm test
```

This will start the Karma unit test runner. Karma will read the configuration file at test/karma.conf.js. This configuration file tells Karma to:

  - open up a Chrome browser and connect it to Karma
  - execute all the unit tests in this browser
  - report the results of these tests in the terminal/command line window
  - watch all the project's JavaScript files and re-run the tests whenever any of these change

It is good to leave this running all the time, in the background, as it will give you immediate feedback about whether your changes pass the unit tests while you are working on the code.
