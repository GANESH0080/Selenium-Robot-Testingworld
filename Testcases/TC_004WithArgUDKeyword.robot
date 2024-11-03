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
    #Calling User defined keyword
    Click signUP Enter Username Password    ${UN}    ${EmailID}    ${Pass}
    Click signUP Enter Username Password    Shlok    shlok@test.com    123456
    #Calling User defined keyword
    Radiobtn Checkbox Link selection
    #Calling User defined keyword
    Checkbox selection



*** Keywords ***
Click signUP Enter Username Password
    [Arguments]    ${username}    ${email}    ${password}
    Click Button    xpath://input[@type='submit']
    Input Text  name:fld_username  ${username} 
    Input Text  name:fld_email  ${email}
    Input Text    xpath://input[@name='fld_password']    ${password}
    Clear Element Text  xpath://input[@name='fld_password']


Radiobtn Checkbox Link selection
    Select Radio Button  add_type  home
    Select Checkbox    name:terms
    Click Link    xpath://a[text()='Read Detail']
    Click Element    xpath://a[text()='X']


Checkbox selection
    Set Selenium Speed    2seconds
    Select From List By Index    xpath://select[@name='sex']    2
    Select From List By Label    xpath://select[@name='country']  India
    Select From List By Value    xpath://select[@name='state']  22