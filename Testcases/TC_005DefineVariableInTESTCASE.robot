*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Test Cases ***
TC005 Define and Print Variable
    ${testing} =    Set Variable    Ganesh Salunkhe
    Log To Console    ${testing}

