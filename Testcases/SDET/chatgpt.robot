*** Settings ***
Library    DatabaseLibrary
Library    JSONLibrary
Library    os
*** Variables ***
${DB_HOST}     pcidb01.p04.eng.sjc01.qualys.com
${DB_PORT}     1521
${DB_NAME}     PCI
${DB_USER}     pci_user
${DB_PASSWORD}    PCI2006!

*** Test Cases ***
Connect to Oracle Database
    Connect To Database    CX_ORACLE    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORT}

Verify Data in Table
    ${query_result}    Query    SELECT * FROM scan where id='1338';
    Log    ${query_result}
    ${query_result.json()}

    Should Not Be Empty    ${query_result}
    Log    Data verification passed.

*** Keywords ***
Cleanup Database Connection
    Disconnect From Database
