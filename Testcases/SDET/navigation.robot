# Created by awaghmare at 4/23/2024
*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
navigate demo
    Open browser    https://www.google.com/     Chrome
    Maximize browser window
    Set selenium speed    1 seconds
    ${location}=   Get location
    Log to console      ${location}
    Go to    https://www.bing.com/
    ${location}=   Get location
    Log to console      ${location}
    Go back
    ${location}=   Get location
    Log to console      ${location}


*** Keywords ***
