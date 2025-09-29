*** Settings ***
Documentation    Resource File to hold all the Common teardowns and setups for the tests,
...    In this template it is encouraged to use as little robot code as possible,
...    so the use of resource files should be kept at a minimum,
...    and use python libraries instead.


*** Keywords ***
Type 1 Test Setup
    [Documentation]    this keyword will be executed before each test of type 1, place here any initialization common to tests of this type
    Log    Type 1 Test Setup

Type 1 Test Teardown
    [Documentation]    this keyword will be executed after each test of type 1, place here any cleanup common to tests of this type
    Log    Type 1 Test Teardown

Type 2 Test Setup
    [Documentation]    this keyword will be executed before each test of type 2, place here any initialization common to tests of this type
    Log    Type 2 Test Setup

Type 2 Test Teardown
    [Documentation]    this keyword will be executed after each test of type 2, place here any cleanup common to tests of this type
    Log    Type 2 Test Teardown