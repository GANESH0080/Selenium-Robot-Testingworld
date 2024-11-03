*** Settings ***
Library    SeleniumLibrary
Resource    ..//Resources-ExcelTestcases/ReadExcelData.robot

*** Variables ***

${Browser}  chrome
${URL}    https://practicetestautomation.com/practice-test-login/




*** Test Cases ***
TC001 Browser Start and Close
    Open Browser    ${URL}  ${Browser}
    Maximize Browser Window
    ${maxrow} =    Read number of rows        Reading
    Log To Console    ${maxrow}
    FOR    ${i}    IN RANGE    1    ${maxrow}+1
        Sleep    5s
        ${UN}=      Read cell data    Reading     ${i}       1
        Log To Console     username is +${UN}
        ${PASS}=    Read cell data    Reading     ${i}       2
        Log To Console      password is +${PASS}
        Input Text    id:username    ${UN}
        Input Text    id:password    ${PASS}
        Click Button    id:submit
        #Close All Browsers
    END
    
    