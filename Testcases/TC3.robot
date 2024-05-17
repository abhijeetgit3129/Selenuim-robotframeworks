*** Settings ***
Documentation   To validate the Login form
Library     SeleniumLibrary
Library     String
Library    Collections
Test Setup    open the browser with url    Firefox
Test Teardown    Close Browser session
Resource    ../PO/Generic.robot

*** Variables ***
${Error_Message_Login}      css:.alert-danger
${main_title_page}      LoginPage Practise | Rahul Shetty Academy

*** Test Cases ***
Validate Child window Functionality
    Select the link of child window
    verify the user is switched to child window
    grab the email id in the child window
    switch to parent window and enter the email



*** Keywords ***
Select the link of child window

    Click element    class:blinkingText
    Sleep    5
verify the user is switched to child window
    Switch window    new
    Element text should be       tag:h1    DOCUMENTS REQUEST

grab the email id in the child window
    ${string1}=     Get text    xpath=//p[@class='im-para red']
    @{list1}=   Split string    ${string1}    at
    ${string2}=     Get from list    ${list1}   1
    @{list2}=   Split string    ${string2}
    ${string3}=    Get from list    ${list2}    0
    Set global variable    ${string3}
    Log    ${string3}

switch to parent window and enter the email
    Switch window    MAIN
    Title should be    ${main_title_page}
    Input text    id:username     ${string3}
    Sleep    3



















