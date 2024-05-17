# Created by awaghmare at 3/10/2024
*** Settings ***
Library    Collections
Library    Requestlibrary


*** Test Cases ***
play around with dictionaries
    &{data}=    Create dictionary    name=abhijeet    cource=robot
    log    ${data}
    Dictionary should contain key    ${data}    name
    log    ${data}[cource]
    ${name_1}=    Get from dictionary    ${data}    name
    log     ${name_1}


Add book into database
