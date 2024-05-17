# Created by awaghmare at 3/14/2024
*** Settings ***
Library     SeleniumLibrary

*** variables ***

${url}      https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***

Test case 1
    radiobutton cases
    checkbox cases
    dropdown cases



*** Keywords ***
radiobutton cases
    Create webdriver    Chrome
    Maximize browser window
    Go to   ${url}
    Wait until element is visible    XPATH://input[@value='radio1']
    Select radio button    radioButton  radio2
    Sleep    2
    Select radio button    radioButton    radio3
    Sleep    2

    Sleep    2
    #Page Should Contain Radio Button    XPATH://input[@value='radio1']
    #Click element    XPATH://input[@value='radio1']
    Page Should Contain Radio Button    XPATH://input[@value='radio1']
    Radio Button Should Be Set To    radioButton    radio3

checkbox cases
    Select checkbox    option1
    Sleep    2
    Select checkbox    XPATH://input[@id='checkBoxOption3']
    Sleep    2
    #Checkbox should be selected    option2

dropdown cases
    Select from list by label    id:dropdown-class-example    Option1
    Sleep    2
    Select from list by index    id:dropdown-class-example    2
    Sleep    2
    #Unselect from list by index    id:dropdown-class-example    2
    Input text    //input[@id='autocomplete']    ind
    Sleep    3
    Click element    //div[@id='ui-id-123']
    Sleep    2
