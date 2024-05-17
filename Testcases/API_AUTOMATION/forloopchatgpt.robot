*** Settings ***
Library  OperatingSystem

*** Test Cases ***
Demo Loop
    FOR    ${index}    IN RANGE    1    6
      Log to console    Current Index is ${index}
      Run Keyword If    ${index} == 3    Log to console    This is index 3
      Run Keyword Unless    ${index} == 5    Log to console  This is not index 5
      Run Keyword If    ${index} % 2 == 0    Log to console    This is an even index
      Run Keyword Unless    ${index} % 2 == 0    Log to console    This is an odd index
    END
