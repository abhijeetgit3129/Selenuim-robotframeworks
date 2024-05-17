# Created by awaghmare at 4/30/2024
*** Settings ***
Library    SeleniumLibrary
Library    DatabaseLibrary
Library    OperatingSystem
Library    OracleDBLibrary
Library    pymysql

Suite Setup  Connect To Database  cx_Oracle    ${DBname}   ${DBUser}   ${DBPass}   ${DBHostname}  ${DBport}
Suite Teardown    Disconnect
*** Variables ***
${DBname}       PCI
${DBUser}       pci_user
${DBPass}       PCI2006!
${DBHostname}    pcidb01.p01.eng.sjc01.qualys.com
${DBport}        1521



*** Test Cases ***
fetech_data_from_db
    Execute SQL String   select * from scans;

