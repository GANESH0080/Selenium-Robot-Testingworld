*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://thetestingworld.com/testings/

*** Test Cases ***
Fetch Data title/ Selenium Speed / locators value
    Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Select From List By Index    xpath://select[@name='sex']    2
    ${DropdownValue} =    Get Selected List Value        xpath://select[@name='sex']
    Log To Console    ${DropdownValue}
    
    ${DropdownLabel} =    Get Selected List Label        xpath://select[@name='sex']
    Log To Console    ${DropdownLabel}
    
    @{ALLdrpvalues} =        Get List Items        xpath://select[@name='sex']
    Log To Console        ${ALLdrpvalues}
