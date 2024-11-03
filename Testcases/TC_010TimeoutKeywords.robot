*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://thetestingworld.com/testings/
${UN}    Ganesh
${EmailID}  salunkhe@testing.com
${Pass}    salunkhe123

*** Test Cases ***
TC004 Browser Start and Close
    Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window

    Set Selenium Timeout    20 seconds
    ${tim} =    Get Selenium Timeout
    Log To Console     ${tim}

    Wait Until Page Contains    Testing
    Click Button    xpath://input[@type='submit']
    Input Text  name:fld_username  Shlok
    Input Text  name:fld_email  shlok@test.com
    Input Text    xpath://input[@name='fld_password']    123456
    Clear Element Text  xpath://input[@name='fld_password']
    Select Checkbox    name:terms
    Click Link    xpath://a[text()='Read Detail']
    Click Element    xpath://a[text()='X']
    Select From List By Index    xpath://select[@name='sex']    2
    Select From List By Label    xpath://select[@name='country']  India
    Wait Until Element Is Enabled     //select[@id='stateId']
    Wait Until Element Is Enabled    //option[text()='Maharashtra']
    Select From List By Value    xpath://select[@name='state']  22


