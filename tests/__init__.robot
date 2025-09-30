*** Settings ***
Documentation    this file  setup and teardown will be always executed before and after the set of tests,
...    make sure to place here any initialization and cleanup common to any test to be executed
Suite Setup      Framework Initialization
Suite Teardown    Framework Teardown
Library    ../libraries/framework/environment.py


*** Variables ***
${ENVIRONMENT}    None


*** Keywords ***
Framework Initialization
    [Documentation]    this keyword will be executed once before starting all tests,
    ...    place here any initialization common to all tests
    ...    in this case we are using it to define a global variable,
    ...    "ENVIRONMENT" holds all the environment data that the test will need to run
    ${ENVIRONMENT}=    Initialize Environment    ${input_data}
    VAR    ${ENVIRONMENT}    value    scope=GLOBAL  # noqa
    Log    Framework Initialization: ${ENVIRONMENT}

Framework Teardown
    [Documentation]    this keyword will be executed once after finishing all tests,
    ...    place here any cleanup common to all tests
    ...    Because this keywords position the actions here will ALWAYS be executed,
    ...    take this chance to cleanup anything that in the worst case scenario could freeze up ypur test bench
    Log    Framework Teardown: ${ENVIRONMENT}
