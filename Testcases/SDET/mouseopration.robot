# Created by awaghmare at 4/23/2024
*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
mouse action
    #right click options
    Open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   Chrome
    Maximize browser window
    #Open context menu    xpath://span[@class='context-menu-one btn btn-neutral']
    #Sleep    1
    #double click actions
    Go to    https://testautomationpractice.blogspot.com/
    Double click element    xpath://button[text()='Copy Text']

    Sleep    2
    #drage and drop
    Go to    https://demo.automationtesting.in/Static.html
    Drag and drop    xpath://img[@src='logo.png']    id:droparea
    Sleep    2





*** Keywords ***
