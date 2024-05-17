# Created by awaghmare at 3/13/2024
*** Settings ***

Library    SeleniumLibrary

*** Keywords ***
nevigate to url



*** Test Cases ***
nevigate to url
    Create webdriver    Chrome
    Maximize browser window
    Go to    https://demo.automationtesting.in/Windows.html
    Click element    XPATH://a[text()='Open Seperate Multiple Windows']
    Click element    XPATH://button[@onclick='multiwindow()']
    Switch window    CURRENT
    Sleep    4
    Switch window    MAIN
    Sleep    4
    Open browser
    Switch browser     1

    Switch browser    2
