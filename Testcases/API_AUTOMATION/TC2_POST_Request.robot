# Created by awaghmare at 5/4/2024
*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${base_url}   https://rahulshettyacademy.com/


*** Test Cases ***
validate_post

    &{body}=    Create dictionary    name1=bw6yes12    isbn=903867    aisle=212417    author=miss_ok
    &{header}=  Create dictionary    Content-Type=application/json
   # Create Session    apipost   ${base_url}
   # ${res}=     POST On Session    apipost  /Library/Addbook.php  json=${body}      headers=${header}
    #Log to console    ${res}
   # Log    ${res}
    #Log to console    ${res.status_code}
    #Log to console    ${res.headers}
    ${res}=     POST    ${base_url}/Library/Addbook.php     json=${body}    expected_status=200
    Log to console    ${res.text}



