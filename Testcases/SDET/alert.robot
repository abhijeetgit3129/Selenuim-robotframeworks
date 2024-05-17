# Created by awaghmare at 4/22/2024
*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

altringhandles
    Open browser    https://testautomationpractice.blogspot.com/    headlesschrome
    Maximize browser window
    #Set selenium speed    1 seconds
    #Click element    xpath://button[text()='Alert']
   # Handle alert    ACCEPT
    #Click element    //button[text()='Confirm Box']
    #Handle alert    DISMISS
    #Click element    xpath://button[text()='Alert']
    #Alert should be present    I am an alert box!
    #Handle alert    LEAVE
    Click element    //button[text()='Prompt']
    #${message}=   Handle alert

    #Log to console    ${message}
     Sleep    3
    Input text into alert    abhi


    #Alert should be present    Please enter your name:
    Sleep    3
    Close browser




*** Keywords ***


