# Created by awaghmare at 5/4/2024
*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary
Library    Collections
*** variables ***
${base_url}    https://qualysapi.p04.eng.sjc01.qualys.com
${path}    /pci/falsePositive/list?


*** Test Cases ***
fetech false positive history
        #${query_para}=  Create list    ip    10.20.32.216

       # @{auth}=    Create list    pci@pod4    Qatemp123#
        @{auth}=    Create list     pci@pod4   Qatemp123#
        &{query_para}=  Create dictionary     ip    10.20.32.216

        &{header}=  Create dictionary    Content-Type=application/json    X-Requested-With=test
        Create Session    f_p   ${base_url}    auth=${auth}
        ${res}=  GET On Session    f_p    ${path}      params=ip=10.20.32.216&status=Rejected   headers=${header}



        ${res}=     GET On Session    f_p    ${path}      params=ip=10.20.32.216&status=Rejected   headers=${header}
        Log to console    ${res.json()['data']['fphistoryList'][0]['status']}
        Should be equal    ${res.json()['data']['fphistoryList'][0]['status']}      Rejected
