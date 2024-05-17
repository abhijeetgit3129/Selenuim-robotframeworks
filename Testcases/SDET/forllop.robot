# Created by awaghmare at 4/30/2024
*** Settings ***


*** Test Cases ***
forloop1
    #FOR    ${i}    IN RANGE    1    10
         # Log to console    ${i}

   # END

    #FOR    ${i}    IN    1    2    3    4    5    6    7    8    9
          #Log to console    ${i}

    #END
    @{list1}=   Create list    abhijeet balbhim waghmare
    FOR    ${i}    IN   @{list1}
        Log to console    ${i}
    END
    @{list1}=   Create list    1    2   3   4   5
    FOR    ${i}    IN    @{list1}
        Log to console    ${i}
        Exit for loop if  ${i}==2
    END

