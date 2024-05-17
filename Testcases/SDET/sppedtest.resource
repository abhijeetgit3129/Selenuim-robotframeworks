# Created by awaghmare at 4/21/2024
*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
RegTest
    Open browser    https://demowebshop.tricentis.com/register    Chrome
    Maximize browser window
    #${speed} =   Get selenium speed
    #${speed}=    Get selenium implicit wait
    ${speed}=    Get selenium timeout
    Log to console    ${speed}
    Set selenium timeout    3
    ${speed} =    Get selenium timeout
    Log to console    ${speed}
    #Set selenium speed    2 seconds
    #Set selenium implicit wait    1 seconds

    Select radio button    Gender      M
    Input text    name:FirstName1    lion
    Input text    name:LastName     Tiger
    Input text    name:Email        ksdjsd@gmail.com
    Input text    name:Password     jsjs
    Input text    name:ConfirmPassword  jsjs
    #${speed} =   Get selenium speed

    Sleep    2








*** Keywords ***
