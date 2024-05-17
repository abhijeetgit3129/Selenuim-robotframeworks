# Created by awaghmare at 5/12/2024
*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

*** Test Cases ***
fetch launges
    Open browser    https://www.google.com/    chrome
    Maximize browser window
    @{web_element_list}=    Get WebElements    xpath://div[@id='SIvCob']//a

    #${index}=  Set variable    1
   # Log to console    @{web_element_list}
    #Log to console    ${web_element_list}

    ${index} =    Set Variable    ${1}

    FOR    ${i}    IN    @{web_element_list}

            Log to console    ${i.text}
            #${index} =    Set Variable    ${index + 1}

            Exit For Loop If    '${i.text}'=='मराठी'

            #${index} =  Evaluate    ${index} +1
            ${index} =    Set Variable    ${index + 1}



    END
    Click element    xpath://div[@id='SIvCob']//a[${index}]
    Sleep    4
    Log to console    ${index}
    log    ${index}    warn
    Log    ${index}    DEBUG
    Log    ${index}    error
    Log    ${index}    Info
    Log    ${index}    TRACE


