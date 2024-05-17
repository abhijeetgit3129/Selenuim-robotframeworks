# Created by awaghmare at 5/4/2024
*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary
Library    Collections
Library    JSONLibrary
*** Variables ***
${base_url}    https://qualysapi.p04.eng.sjc01.qualys.com


*** Test Cases ***
responce validation
        @{auth}=    Create list     pci@pod4        Qatemp123#
        &{Header}=   Create dictionary    Content-Type=application/json    X-Requested-With=test
        Create Session    pcim2     ${base_url}         auth=${auth}
        ${res}=    GET On Session    pcim2     /pci/falsePositive/list     headers=${Header}
        #Log to console    ${res.json()['data']['fphistoryList']}
       # ${json_object}=     To Json    ${res.content}
       # Log to console    ${json_object['data']}
       #Log to console    ${res.headers}
       ${header_value1}=    Get from dictionary    ${res.headers}    Content-Type
       ${header_value2}=    Get from dictionary    ${res.headers}    Transfer-Encoding
       Log to console    ${header_value1}     #application/json
       Log to console    ${header_value2}     #chunked
       Should be equal   ${header_value1}      application/json
       Should be equal   ${header_value2}      chunked
       Log to console    ${res.cookies}

