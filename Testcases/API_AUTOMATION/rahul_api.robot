# Created by awaghmare at 5/4/2024
*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${base_url1}     http://216.10.245.166
${base_url}     https://qualysapi.p04.eng.sjc01.qualys.com
*** Test Cases ***
add book
    &{body1}=    Create dictionary    name=bw6yes12    isbn=903867    aisle=212417    author=miss_ok
    &{header1}=  Create dictionary    Content-Type=application/json
    &{body}=    Create dictionary    assetType=IP  assets=10.115.2.16
    ${auth}=    Create list    pci@pod4    Qatemp123#
    &{header}=  Create dictionary    Content-Type=application/json    X-Requested-With=test
    #POST    ${base_url1}     /Library/Addbook.php     json=&{body}    headers=&{header1}
    Create Session    pcim_post    ${base_url}    auth=${auth}
    ${res}=     POST On Session   pcim_post    /pci/asset/add     json=${body}    headers=${header}

    Log to console    ${res.json()}

    Create Session    pcim_get
    #POST    ${base_url}
