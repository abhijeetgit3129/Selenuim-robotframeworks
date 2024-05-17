# Created by awaghmare at 4/20/2024
*** Settings ***
Library    SeleniumLibrary
*** Variables ***

${url}     https://demo.nopcommerce.com/
${browser}  Chrome


*** Keywords ***
Validate Boxes
    Open browser    ${url}      ${browser}
    Maximize browser window
    Click link    //a[@class='ico-login']
    ${email}    Set variable    id:Email
    Element should be enabled    ${email}
    Element should be visible    ${email}
    #Element should be disabled   ${email}
    Input text    ${email}      tiger@gmail.com
    Sleep    3
    Clear element text    ${email}

    Sleep    3
    Close browser





*** Test Cases ***
validation
    Validate Boxes
