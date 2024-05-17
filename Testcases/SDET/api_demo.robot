# Created by awaghmare at 5/2/2024
*** Settings ***
Library     RequestsLibrary
Library     SeleniumLibrary

*** Variables ***
${url}    https://api.weather.gov
${point}    39.7456,-97.0892

*** Test Cases ***
get_wehther_report
     #Get Requests      https://www.google.com
     #GET  https://www.google.com
    #Create session
    #Create Session    mysession1     https://api.weather.gov/39.7456,-97.0892
    ${responces}=   Get request    mysession        https://api.weather.gov/39.7456,-97.0892
    Get request    https://api.weather.gov/39.7456,-97.0892
    #Log to console    ${responces.status_code}
