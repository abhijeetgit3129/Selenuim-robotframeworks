# Created by awaghmare at 5/12/2024
*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary
Library    Collections
Library    JSONLibrary
Library    C:/Users/awaghmare/PycharmProjects/Robot/Testcases/API_AUTOMATION/Test.py
*** Variables ***

${base_url}     https://qualysapi.p04.eng.sjc01.qualys.com
${path}         /pci/falsePositive/list




*** Test Cases ***

Fetech false positive

    #@{auth_details}=    Create list    pci@pod4    Qatemp123#
    Set Suite Variable    @{auth_details}  pci@pod4    Qatemp123#
   # &{headres}=     Create dictionary    Content-Type=application/json     X-Requested-With=test
    Set Global Variable    &{headres}    Content-Type=application/json     X-Requested-With=test
   # &{q_para}=  Create dictionary   ip=10.20.32.216
    Set Suite Variable    &{q_para}    ip=10.20.32.216
    Create Session     f_p  ${base_url}     auth=${auth_details}
    ${res}=     GET On Session    f_p   ${path}    params=${q_para}    headers=${headres}
    Log to console    ${res.json()}
    Log to console    ${res.json()['data']['fphistoryList']}
    hello world









*** Keywords ***
#Tc1


    #Load json from file
   # Get value from json
   # Get from dictionary






