*** Test Cases ***

Test Case 1
     ${my_local_var}    Set Variable        Hello World
    #Set local variable     ${my_local_var}    Hello World
    Log    ${my_local_var}    # Pass: Logs the value of the variable
    Set Suite Variable     ${my_suite_var}     I'm a suite variable
    Set Global Variable    ${my_global_var}    I'm a global variable

Test Case 2
    Log    ${my_local_var}    # Fails: Variable only exists in the scope of Test Case 1
    Log    ${my_suite_var}    # Pass: Variable exists for the scope of the whole suite
    Log    ${my_global_var}   # Pass: Variable exists for the scope of the whole test run

Test Case 3
    My Keyword
    Log    ${my_keyword_var}    # Fails: Variable only exists in the scope of My Keyword
    Log    ${my_test_var}    # Pass: Variable  exists in the scope of the test case

*** Keywords ***
My Keyword
    ${my_keyword_var}    Set Variable    Hello Keyword
    Log    ${my_keyword_var}    # Pass: Logs the value of the variable
    Set Test Variable    ${my_test_var}    I'm a test case variable  
