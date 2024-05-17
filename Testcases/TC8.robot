# Created by awaghmare at 2/13/2024
*** Settings ***
Documentation    To validate the login from
Test Setup    open the browser with url
Test Teardown    Close Browser session
Resource    ../PO/Generic.robot
Resource    ../PO/LandingPage.robot
Resource    ../PO/ShopPage.robot
Resource    ../PO/CheckoutPage.robot
*** Variables ***

${country_name}    India

*** Test Cases ***
Validate UnSuccesful Login
    [Tags]      smoke     sanity
    LandingPage.Fill the login Form     ${user_name}       ${invalid_password}
    LandingPage.Wait until element is visible on page
    LandingPage.verify error message is correct

Validate cards displayed in validate page
    [Tags]    regression
    LandingPage.Fill the login Form     ${user_name}       ${valid_password}
    ShopPage.Wait until element is visible on page
    ShopPage.Card items lists
    ShopPage.Select The Cart     Blackberry
    CheckoutPage.Process checkout
    checkoutpage.enter country and select the terms   ${country_name}
    checkoutpage.click on purchase button


Fill The Login Details and Login form
    LandingPage.Fill detials and form


*** Keywords ***



