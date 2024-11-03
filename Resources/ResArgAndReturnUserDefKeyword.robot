*** Settings ***
Library    ../PythonUserDefineKeywords/ArgAndReturnCustomUserDefKeyword.py
Library    SeleniumLibrary


*** Keywords ***
Addition of two numbers
    [Arguments]    ${value1}    ${value2}     
    ${res} =    concanatenate_two_values    ${value1}    ${value2}
    Log To Console    ${res}

