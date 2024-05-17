# Created by awaghmare at 2/13/2024
*** Settings ***
Documentation    To validate the login from
Library     SeleniumLibrary
Test Teardown    Close Browser

*** Variables ***
${Error_Message_Login}  xpath://div[@class='alert alert-danger col-md-12']


*** Test Cases ***
Validate UnSuccesful Login
    open the browser with the Mortgage payment url
    Fill the login Form
    wait until it checks and display error message
    verify error message is correct
*** Keywords ***
open the browser with the Mortgage payment url
     Create webdriver    Chrome
     Go to    https://rahulshettyacademy.com/loginpagePractise/
Fill the login Form
      Input text    id:username     rahulsheety.com
      Input password    id:password     ansdjsjdj
      Click button    signInBtn
wait until it checks and display error message
      Wait until element is visible     ${Error_Message_Login}

verify error message is correct
      #${result}=    Get text    ${Error_Message_Login}
      #Should Be Equal As Strings     ${result}     Incorrect username/password.
      Element text should be    ${Error_Message_Login}  Incorrect username/password.

