# Created by awaghmare at 5/5/2024
*** Settings ***



*** Test Cases ***
TC1
    [Tags]    sanity
    Log to console    TC_1 is running

TC2
    [Tags]    sanity        RGRESSION
    Log to console    TC_2 is running

TC3
    [Tags]    hope
    Log to console    TC_3 is running

TC4
    Log to console    TC_4 is running

TC5
    Log to console    TC_5 is running

# -v browser:chrome --test "*"  C:/Users/awaghmare/PycharmProjects/Robot/Testcases/API_AUTOMATION/tags.robot
