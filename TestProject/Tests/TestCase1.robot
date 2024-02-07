*** Settings ***
Documentation    This is my first test case
Library    OperatingSystem 

*** Keywords ***
Log My Username
    Log    ${DICTIONARY}[password]

Log My Specific Username
    [Arguments]    ${USERNAME}
    Log    ${USERNAME}

*** Variables ***
${MY-VARIABLE}    My test variable

@{LIST}    test1    test2    test3    test4

&{DICTIONARY}    username=testuser    password=demo

&{DICTIONARY2}    username=testuser2    password=demo2

*** Test Cases ***
Test
    [Tags]    demo2    demooo
    Log    This is a sample test case
    Log    ${MY-VARIABLE}
    Log    ${LIST}[2]
    Log    ${LIST}[0]
    Log    ${DICTIONARY}[username]
    Log My Username
    Log My Specific Username    ${DICTIONARY2}[username]