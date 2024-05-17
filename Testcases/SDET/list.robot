# Created by awaghmare at 4/23/2024
*** Settings ***
Library    SeleniumLibrary



*** Test Cases ***
Get ele
    Open browser    https://www.google.com/     Chrome
    ${ele}=     Get WebElements    //div[@id='SIvCob']//a


    FOR     ${i}    IN    @{ele}
            Log to console    ${i.text}
            #Click element    ${i}

    END


*** Keywords ***
