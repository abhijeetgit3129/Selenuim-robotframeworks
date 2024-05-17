# Created by awaghmare at 5/5/2024
*** Settings ***
Library     SeleniumLibrary
Library     Collections




*** Test Cases ***
TC1
    open brow and navigate to url
    collect locators
    #verify list

*** Keywords ***
open brow and navigate to url
    Open browser    https://www.google.com/    chrome
collect locators
    @{expected list}=   Create list    हिन्दी   বাংলা    తెలుగు  मराठी    தமிழ்  ગુજરાતી    ಕನ್ನಡ    മലയാളം    ਪੰਜਾਬੀ
    @{webelements}=    Get WebElements    xpath://div[@id='SIvCob']//a
    @{elements}=    Create list
     FOR    ${i}    IN    @{webelements}
        Log to console   ${i.text}
        Append To List    ${elements}    ${i.text}
     END
     Log to console    ${elements}
     Log to console    ${expected list}
     Lists Should Be Equal      ${elements}    ${expected list}


