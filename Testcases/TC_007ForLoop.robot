*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Variables ***


*** Test Cases ***
TC007 For Loop
    #Creating LIST
    @{TestList}    Create List    11  Ganesh  Salunkhe  17.5  Shlok
    FOR    ${i}    IN RANGE    1  10
        Log To Console    ${i}
    END
    Log To Console    -----------------------------------------
    FOR    ${j}    IN    @{TestList}
        Log To Console    ${j}
    END


