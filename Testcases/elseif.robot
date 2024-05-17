# Created by awaghmare at 5/12/2024
*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** variables ***
${url}      https://www.google.com/
${browser}   chrome




*** Test Cases ***

TC1
    Open browser    ${url}      ${browser}
    ${count}=   Get element count    //div[@id='SIvCob']//a
    Run keyword if      ${count}<7       key1
    ...     ELSE IF     ${count}>10       Key2
    ...     ELSE        key3


*** Keywords ***
key1
    Log to console    key1 is running
key2
    Log to console    key2 is running
key3
    Log to console    key3 is running

