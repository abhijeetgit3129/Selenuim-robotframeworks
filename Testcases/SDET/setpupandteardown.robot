# Created by awaghmare at 5/5/2024
*** Settings ***

Suite Setup    log to console    opening browser
Suite Teardown    log to console    closing browser
Test Setup    log to console    opening application
Test Teardown    log to console    closing application

*** Test Cases ***
TC1
    Log to console    TC_case1 executing

TC2
    Log to console    TC_case2 executing


TC3
    Log to console    TC_case3 executing


TC4
    Log to console    TC_case4 executing

TC5
    Log to console    TC_case5 executing
