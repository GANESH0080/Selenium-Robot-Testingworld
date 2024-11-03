*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Variables ***


*** Test Cases ***
TC008 RUN AND RUN KEYWORD IF
    ${var_key}=  Set Variable    Log To Console    
    Run Keyword       ${var_key}    Ganesh Salunkhe

    ${var}=  Set Variable    NO
    Run Keyword If   '${var}' == 'YES'   Log To Console    PASS
    Run Keyword If   '${var}' == 'NO'   Log To Console    FAIL