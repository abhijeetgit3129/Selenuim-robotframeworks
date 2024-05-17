# Created by awaghmare at 5/4/2024
*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary
Library    Collections


*** Variables ***
${base_url}     https://jsonplaceholder.typicode.com



*** Test Cases ***

validate header
    Create Session    my_head   ${base_url}
    ${resp}=    GET On Session    my_head   /photos
    Log to console    ${resp}

