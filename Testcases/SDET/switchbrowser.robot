# Created by awaghmare at 4/23/2024
*** Settings ***
Library    SeleniumLibrary




*** Test Cases ***
Browesr switch
    Open browser    https://demo.automationtesting.in/Windows.html    Chrome


    Open browser    https://demo.automationtesting.in/Index.html     Chrome
    #Switch browser    1
    Switch browser    1
    Click element    //a[@href='#Seperate']


    Sleep    2
    Close all browsers



*** Keywords ***
