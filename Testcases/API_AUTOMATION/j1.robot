# Created by awaghmare at 5/4/2024
*** Settings ***
Library    JSONLibrary
#Library    os
Library    Collections



*** Variables ***


*** Test Cases ***
access json:
    ${json_object}=     Load json from file    C:/Users/awaghmare/PycharmProjects/Robot/Testcases/API_AUTOMATION/demo.json
    ${name_value}=   Get value from json    ${json_object}       $.employee.name
    Log to console    ${name_value[0]}
    Should be equal    sonoo        ${name_value[0]}

access json2:
     ${json_object2}=     Load json from file    C:/Users/awaghmare/PycharmProjects/Robot/Testcases/API_AUTOMATION/complexjson.json
     Log to console    ${json_object2['glossary']['GlossDiv']['GlossList']['GlossEntry']['GlossDef']['GlossSeeAlso']}
     Should contain any    ${json_object2['glossary']['GlossDiv']['GlossList']['GlossEntry']['GlossDef']['GlossSeeAlso']}   GML    XML
