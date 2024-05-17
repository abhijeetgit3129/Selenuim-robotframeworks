# Created by awaghmare at 5/12/2024
*** Settings ***

Library    SeleniumLibrary

*** Keywords ***



*** Test Cases ***
Tc1
    Open browser    https://rahulshettyacademy.com/AutomationPractice/    chrome
    Maximize browser window
    Select radio button    radioButton    radio2
    Sleep    2
    Select radio button    radioButton    radio3

    Select checkbox    option1
    Select checkbox    xpath://input[@id='checkBoxOption2']

    Select from list by value    //select[@id='dropdown-class-example']    option2
    Sleep    2

