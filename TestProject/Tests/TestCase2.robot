*** Settings ***
Library    OperatingSystem
Resource    ../Resources/Resources.robot

*** Test Cases ***
TEST2
    Log    This is my second test case
    Log    ${resource-variable}