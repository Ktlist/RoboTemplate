*** Settings ***
Documentation    This is an example test suite that demonstrates the use of a test template.
...    You may have some keywords available in this resources files but try to limit the use of robot coded keywords
...    and use python coded keywords instead, this is to limit how deep the robot code will be seen in the logs
...    making it easier to find the root cause of a failure, and debugging step by step.

Library    ../example_suite_folder/example_suite_test_library.py


*** Keywords ***
Example Test Template
    [Documentation]    This is an example test template that can be reused with different arguments.
    ...    The objective is to have the most amount of robot code reused, and only change the arguments.
    ...    if 2 tests hava a too different behaviour maybe they are meant to be in different test suites.
    [Arguments]    ${arg1}    ${arg2}
    Log    Executing Example Test Template with arguments: ${arg1}, ${arg2}
    Should Not Be Equal    ${arg1}    ${arg2}
    Suite 1 Example Keyword    ${arg1}    ${arg2}
