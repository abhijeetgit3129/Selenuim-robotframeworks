# Created by awaghmare at 5/5/2024
*** Settings ***

*** Variables ***
${my_var}    my_value_killer
@{my_list}   Tiger    Lion    Wolf
&{my_dic}   name=abhijeet   surname=waghmare    town=pune


*** Test Cases ***
Validate vars
    Log to console    ${my_var}

validate list
    FOR  ${i}  IN     ${my_list}
        Log to console    ${i}

    END


validate list1
    FOR  ${i}  IN     @{my_list}
        Log to console    ${i}

    END


validate dic
    FOR    ${key}    ${value}    IN    &{my_dic}
           # Log to console    ${key}
           # Log to console    ${value}
            Log many    ${key}    ${value}

    END

#validate dic1
    #FOR    ${key}    ${value}    IN    ${my_dic}
          # Log many    ${key}    ${value}
   # END
