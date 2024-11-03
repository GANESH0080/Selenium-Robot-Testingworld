*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://thetestingworld.com/testings/

*** Test Cases ***
Fetch Data title/ Selenium Speed / locators value
    Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    ${title} =    Get Title
    Log To Console    ${title}
    ${speed} =     Get Selenium Speed
    Log To Console    ${speed}
    Set Selenium Speed    2
    Click Button    xpath://input[@type='submit']
    Input Text  name:fld_username  Ganesh
    Input Text  css:.field  Salunkhe
    Input Text    xpath://input[@name='fld_password']    ganusalunkhe
    Clear Element Text  xpath://input[@name='fld_password']
    Select Radio Button  add_type  home
    Select Checkbox    name:terms
    Click Link    xpath://a[text()='Read Detail']
    Click Element    xpath://a[text()='X']
    ${speed1} =     Get Selenium Speed
    Log To Console    ${speed1}
    ${txtbxvalue} =     Get Value           name:fld_username
    Log To Console         ${txtbxvalue}
    ${btnvalue} =     Get Value    //input[@value='Sign up']
    Log To Console         ${btnvalue}
    ${lnktxt} =     Get text    css:.displayPopup
    Log To Console         ${lnktxt}