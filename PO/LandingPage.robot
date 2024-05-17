# Created by awaghmare at 3/8/2024
*** Settings ***
Documentation    All the page object and keywords of landing page
Library    SeleniumLibrary
Resource    Generic.robot
*** Variables ***

${Error_Message_Login}  xpath://div[@class='alert alert-danger col-md-12']
*** Keywords ***
Fill the login Form
      [Arguments]    ${user_name}       ${password}
      Input text    id:username     ${user_name}
      Input password    id:password     ${password}
      Click button    signInBtn

Wait until element is visible on page
    Wait untill Element is located in the page     ${Error_Message_Login}

verify error message is correct
    Element text should be    ${Error_Message_Login}  Incorrect username/password.

Fill detials and form
      Input text    id:username     rahulshettyacademy
      Input password    id:password     $learning
      Click element     xpath://input[@value='user']
      Wait until element is visible    css:.modal-body
      Click element    xpath://button[@id='okayBtn']
      Wait until element is not visible     css:.modal-body
      Select from list by value    xpath://select[@class='form-control']    consult
      Select checkbox    terms
      Checkbox should be selected    terms
