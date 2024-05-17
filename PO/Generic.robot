# Created by awaghmare at 2/13/2024


*** Settings ***
Documentation    Resource file are re-using to vaiable and keywords
...    importing library

Library     SeleniumLibrary
Library    Collections

*** Variables ***
${browser_name}    Chrome
${user_name}    rahulshettyacademy
${invalid_password}     ansdjsjdj
${valid_password}     learning
${url}      https://rahulshettyacademy.com/loginpagePractise/


*** Keywords ***

open the browser with url

     Create webdriver    ${browser_name}
     Go to    ${url}
     Maximize browser window






Close Browser session
     Close browser

Wait untill Element is located in the page
     [Arguments]         ${page_locator}
      Wait until element is visible       ${page_locator}       10
