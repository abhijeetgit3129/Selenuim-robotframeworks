# Created by awaghmare at 3/8/2024

*** Settings ***
Documentation    All the shop page object and keywords of checkout page
Library    SeleniumLibrary
Library    Collections
Resource    Generic.robot
*** Variables ***

#${india}     xpath://a[text()='India']

*** Keywords ***
Process checkout
    Click button    xpath://button[@class='btn btn-success']
Enter Country and select the terms
    [Arguments]     ${country_name}
    Input text    //input[@id='country']    ${country_name}
    Wait untill Element is located in the page     xpath://a[text()='${country_name}']
    Click element    xpath://a[text()='${country_name}']
    Click element    //label[@for='checkbox2']
click on purchase button
      Click button    xpath://input[@value='Purchase']
      Page should contain    Success!





