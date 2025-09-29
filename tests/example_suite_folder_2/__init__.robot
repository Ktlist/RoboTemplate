*** Settings ***
Documentation    this file  setup and teardown will be always executed before and after the set of tests,
...
...    make sure to place here any initialization and cleanup common to any test to be executed
...    take into account that any variable defined here will be accesible nad modifiable for all the test
...    so the first test might leave it in a bad state for the next one in this suite
...
...    This init will be used as an example on how to enter a test suite,
...    but if there is not specific initialization needed just remove the file,
...    although its quite useful to set a good documentation of what the suite will test including images:
...    [../../docs/tests/example_suite/Robot-framework-logo.png | example on how to insert an image]
