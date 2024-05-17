# Created by awaghmare at 4/20/2024
*** Settings ***
Library     SeleniumLibrary
*** variables ***
${url}    https://rahulshettyacademy.com/AutomationPractice/
${browser}  Chrome

*** Test Cases ***
Validate radion and checkboxes
    step1


*** Keywords ***
step1
    Open browser    ${url}      ${browser}
    Select radio button    radioButton      radio1
    Select checkbox    checkBoxOption1
    Select checkbox    xpath://input[@id='checkBoxOption3']
    #Sleep    2
    Select from list by value    dropdown-class-example     option2
    Sleep    3
    Select from list by index    xpath://select[@id='dropdown-class-example']     0
    Select from list by value    xpath://div[@id="ui-id-78"]          India

    Sleep    3
    Close browser

