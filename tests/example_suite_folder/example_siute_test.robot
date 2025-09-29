*** Settings ***
Documentation    In this file will be defined the test that can be executed.
...    in this template the convention is that every test is a template with diferent arguments.
...    The objective is to have the most amount of robot code reused, and only change the arguments.
...    if 2 tests hava a too different behaviour maybe they are meant to be in different test suites.
...    
...    the template itself will be defined in the example_suite_test.resource file, in this same folder.
...    Of course the template can also be defined in this same file but just to keep things organized and clean, 
...    the tests combinations and the steps definition will be separated by default

Resource    ./example_suite_test.resource


*** Test Cases ***
Example Test Case A
    [Documentation]    This is an example test case A that uses the template defined in the resource file.
    ...    It demonstrates how to pass different arguments to the same template.
    [Tags]    test_manager_id_001
    [Template]    Example Test Template
    argument1    argument2

Example Test Case B
    [Documentation]    This is an example test case B that uses the same template as Test Case A but different arguments.
    [Tags]    test_manager_id_002
    [Template]    Example Test Template
    argument2    argument1