# Created by awaghmare at 4/23/2024
*** Settings ***
Library     SeleniumLibrary



*** Test Cases ***
tabbed window
    Open browser    https://demo.automationtesting.in/Windows.html      Chrome
    Maximize browser window
    #Click link    Open Seperate Multiple Windows
    Click element    //a[@href='http://www.selenium.dev']//button[@class='btn btn-info']
    Sleep    2
    ${window_title_child}=  Get window titles
    ${t_c}=  Get title
    Log to console    ${t_c}
    Log to console    ${window_title_child}
    Switch window    title= Selenium
    Click element    //a[@href='/downloads']
    Switch window    Frames & windows



    Click element    //a[@href='http://www.selenium.dev']//button[@class='btn btn-info']
    Title should be    Frames & windows
    ${window_title_child}=  Get window titles
    Log to console    ${window_title_child}
    Sleep    2



*** Keywords ***
