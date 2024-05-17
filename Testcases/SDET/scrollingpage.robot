# Created by awaghmare at 4/30/2024
*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

*** Test Cases ***
scroll_test
    Open browser    https://rahulshettyacademy.com/AutomationPractice/    Chrome
    Maximize browser window
    Sleep    2
    #Execute javascript  window.scrollTo(0,1500)
    Scroll element into view    id:mousehover
    Execute javascript    window.scrollTo(0,document.body.scrollHeight)
    Sleep    2
    Execute javascript    window.scrollTo(0,-document.body.scrollHeight)
    Sleep    2
