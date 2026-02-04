*** Settings ***
Documentation     Lab 8 Robot Framework Test
Library           BuiltIn

*** Test Cases ***
Check Simple Condition
    Log    Jenkins Robot Framework is running
    Should Be Equal    1    1
