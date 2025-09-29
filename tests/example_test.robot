*** Settings ***
Documentation    Example test suite for Robot Framework
Library    ../libraries/example_library.py
Resource    ../resources/example_resource.resource


*** Test Cases ***
Example Test Case 1
    [Documentation]    This is an example test case that demonstrates usage of keywords.
    Some Keyword    ${variable_from_resource}

Example Test Case 2
    [Documentation]    This is another example test case.
    Another Keyword    ${another_variable}    argument1    argument2


*** Keywords ***
Some Keyword
    [Documentation]    This is an example keyword that demonstrates usage of a variable from the resource file.
    [Arguments]    ${arg}
    Log    This is a log message with argument: ${arg}

Another Keyword
    [Documentation]    This is another example keyword that takes multiple arguments.
    [Arguments]    ${arg1}    ${arg2}    ${arg3}
    Log    This is another log message with arguments: ${arg1}, ${arg2}, ${arg3}
