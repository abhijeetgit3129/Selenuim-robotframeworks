# Created by awaghmare at 2/13/2024
*** Settings ***
Documentation    To validate the login from
Library    ../CustomLibraries/Shop.py
Test Setup    open the browser with url    Firefox
Test Teardown    Close Browser session
Resource    ../PO/Generic.robot
*** Variables ***
${Error_Message_Login}  xpath://div[@class='alert alert-danger col-md-12']
${checkout_buttion}     //a[@class='nav-link btn btn-primary']
@{listofProducts}      Nokia Edge  Blackberry
*** Test Cases ***
#Validate UnSuccesful Login

    #Fill the login Form     ${user_name}       ${invalid_password}
    #Wait until element is visible on page       ${Error_Message_Login}
    #verify error message is correct

Validate cards displayed in validate page
   Fill the login Form     ${user_name}       ${valid_password}
   Wait until element is visible on page    ${checkout_buttion}
   Cardt items lists
   Hello world
   #add_items_to_cart_and_checkout
   Add items to cart and checkout   ${listofProducts}
   #Select The Cart     Blackberry

Fill The Login Details and Login form
      Fill detials and form

*** Keywords ***
Fill the login Form
      [Arguments]    ${user_name}       ${password}
      Input text    id:username     ${user_name}
      Input password    id:password     ${password}
      Click button    signInBtn

Wait until element is visible on page
      [Arguments]    ${page_element}
      Wait until element is visible     ${page_element}

verify error message is correct

      Element text should be    ${Error_Message_Login}  Incorrect username/password.

Cardt items lists
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
     Sleep    4

Fill detials and form
      Input text    id:username     rahulshettyacademy
      Input password    id:password     $learning
      Click element     xpath://input[@value='user']
      Wait until element is visible    css:.modal-body
      Click element    xpath://button[@id='okayBtn']
      Wait until element is not visible     css:.modal-body
      Select from list by value    xpath://select[@class='form-control']    consult
      Select checkbox    terms
      Checkbox should be selected    terms

