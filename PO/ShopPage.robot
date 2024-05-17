# Created by awaghmare at 3/8/2024
*** Settings ***
Documentation    All the shop page object and keywords of landing page
Library    SeleniumLibrary
Library    Collections
Resource    Generic.robot
*** Variables ***
${checkout_buttion}     //a[@class='nav-link btn btn-primary']


*** Keywords ***
Wait until element is visible on page

      Wait until element is visible     ${checkout_buttion}

Card items lists
    @{expected_list}=   Create list    iphone X  Samsung Note 8   Nokia Edge  Blackberry
    @{actual_list}=     Create list

    ${cart_items_list}=     Get WebElements    XPATH://h4[@class='card-title']
    FOR     ${i}    IN    @{cart_items_list}
            Log    ${i.text}
            Append To List	    ${actual_list}      ${i.text}
    END
    Lists Should Be Equal   ${expected_list}    ${actual_list}
    Log    ${actual_list}
    Log    ${expected_list}

Select The Cart
     [Arguments]    ${cart_name}
     ${web_elements}=   Get WebElements    xpath://h4[@class='card-title']
     ${index}=  Set variable    1

     FOR   ${element}    IN    @{web_elements}
            Exit For Loop If	'${element.text}' == '${cart_name}'
            ${index} =  Evaluate    ${index} +1
     END
     Click button    xpath:(//div[@class='card-footer'])[${index}]/button
     Click element    ${checkout_buttion}



