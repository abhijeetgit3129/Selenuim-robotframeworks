# Created by awaghmare at 4/22/2024
*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
browesr close
    Open browser    https://demowebshop.tricentis.com/register    Chrome
    Maximize browser window
    Open browser    https://demowebshop.tricentis.com    Chrome
    Sleep    3
    #Close browser
    Close all browsers

*** Keywords ***
