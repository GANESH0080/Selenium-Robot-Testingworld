*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Variables ***


*** Test Cases ***
TC006 Define List and Get List Value
    #Creating LIST
    @{TestList}    Create List    11  Ganesh  Salunkhe  17.5  Shlok
    #Printing LIST
    Log To Console    ${TestList}
    
    #Trying to find the LIST length and Printing in Console
    ${ListLength}    Get Length    ${TestList}
    Log To Console     ${ListLength}

    #Fetching the list value from LIST
    ${list_data}=    Get From List       ${TestList}    4
    Log To Console      ${list_data}

    #Validating LIST has value Ganesh or Not
    List Should Contain Value       ${TestList}   Ganesh

    List Should Not Contain Value    ${TestList}    ganesh
    List Should Not Contain Value    ${TestList}    ganu


