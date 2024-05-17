# Created by awaghmare at 4/30/2024
*** Settings ***
Library    SeleniumLibrary
Library           DatabaseLibrary
Library           OperatingSystem


*** Test Cases ***
alllink_test
    Open browser    https://demo.guru99.com/test/newtours/    Chrome
    Maximize browser window
    ${all_link_count}=  Get element count   XPATH://a
    Log to console    ${all_link_count}
    @{link_iteams}=     Create list
    FOR    ${i}    IN RANGE     1     ${all_link_count}+1
        ${link_text}=   Get text    XPATH:(//a)[${i}]
        Log to console    ${link_text}
    END

