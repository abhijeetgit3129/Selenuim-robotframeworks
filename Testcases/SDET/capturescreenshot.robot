# Created by awaghmare at 4/23/2024
*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
screen shot
    Open browser    https://demo.automationtesting.in/Index.html   Chrome
    Maximize browser window
    Set selenium speed    1 Seconds
    Input text          id:email      abhijeet
screen shot1
    Capture element screenshot    xpath://img[@alt='logo']     ele.png
    Capture element screenshot    page.png
    Sleep    1

*** Keywords ***
