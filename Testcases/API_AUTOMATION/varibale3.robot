*** Variables ***
@{my_list}    Apple    Banana    Orange

*** Test Cases ***
Test Case 1
    Log    ${my_list}   # Pass: Logs the whole list object
    Log Many    @{my_list}   # Pass: Logs the items of the list object
    Log Many    ${my_list}   # Pass: Logs the whole list object
    Log List    ${my_list}   # Pass: Logs the whole list object
    Log    ${my_list}[0]    # Pass: Logs the first item of the list object
    Log    @{my_list}[0]    # Fail: @{my_list} is not a list object and does not have an index
    Log    @{my_list}       # Fail: The second argument of the Log keyword `level` only allows the values `TRACE`, `DEBUG`, `INFO`, `WARN`, `ERROR`, `NONE`.
                            # The value `Banana` for the argument `level` is not allowed.
    Log    ${my_list}[0]    ${my_list}[1]   ${my_list}[2]   # Fail: Same as above    
    FOR    ${item}    IN    @{my_list}  # Pass: Iterates over the items of the list object
        Log    ${item}                  # Pass: Logs the items of the list object   
    END
