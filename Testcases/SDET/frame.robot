# Created by awaghmare at 4/22/2024
*** Settings ***
Library     SeleniumLibrary

*** Keywords ***

*** Test Cases ***
frametesting
    Open browser    https://rahulshettyacademy.com/AutomationPractice/      chrome
    Maximize browser window
    Select frame    courses-iframe
    Click link      Practice
    Unselect frame
    Select radio button    radioButton   radio1

    Switch window   Get window titles

    #


