# Created by awaghmare at 5/2/2024
*** Settings ***
Library     RequestsLibrary
Library     SeleniumLibrary
Library    Collections

*** Variables ***
${url}    http://api.weather.gov
${point}    39.7456,-97.0892

*** Test Cases ***
get_wehther_report

    Create Session    my_api    url=http://216.10.245.166
    ${response}=   GET On Session    my_api  /Library/GetBook.php    params=AuthorName=Rahul sheety
    Log to console    ${response.json()}
    #Log to console    ${response.status_code}
    #Log to console    ${response.headers}
    #Log to console    ${response.content}
    ${body}=   Convert to string    ${response.content}
    Should contain   ${body}    Learn Selenium Java
    ${status_code}=    Convert to string    ${response.status_code}
    #Log to console    ${status_code}
    Should be equal    ${status_code}    200
    ${header}=  Convert to string    ${response.headers}
    Log to console    ${header}
    #Should contain    ${header}     Content-Type
    ${Access-Control-Allow-Methods_value}=  Get from dictionary    ${response.headers}      Access-Control-Allow-Methods
    Log to console    ${Access-Control-Allow-Methods_value}
    Should contain    ${Access-Control-Allow-Methods_value}     POST
    Should be equal   ${Access-Control-Allow-Methods_value}     POST
