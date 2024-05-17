# Created by awaghmare at 4/20/2024
*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  Chrome



*** Test Cases ***
Login Test
     Open browser     ${url}    ${browser}
     login application
     Close browser







*** Keywords ***
login application
    #Create webdriver    Chrome

     #Go to    https://demo.nopcommerce.com/
     Click link    xpath://a[@class='ico-login']
     Input text    id:Email     pavanoltraining@gmail.com
     Input text    id:Password    Test@123
     Click element    //button[@class='button-1 login-button']

