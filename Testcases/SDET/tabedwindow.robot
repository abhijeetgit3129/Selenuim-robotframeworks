# Created by awaghmare at 5/6/2024
*** Settings ***
Library    SeleniumLibrary




*** Test Cases ***
tabbed windows
    Open browser    https://demo.automationtesting.in/Windows.html    chrome
    Maximize browser window
    Click link      Open Seperate Multiple Windows
    Click element    //button[@onclick='multiwindow()']
    Sleep    2
    ${window_handles}=  Get window handles
    Log to console    ${window_handles}
    ${current_window_title}=    Get title
    Log to console    ${current_window_title}
    ${all_window_titles}=   Get window titles

    Log to console    ${all_window_titles}

    Switch window    title=Index
    Title should be    Index
    Input text    id:email      abh@gmail.com
    Sleep    2
    #Switch window    3
    #Sleep    2
