*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}  chrome
${URL}    https://thetestingworld.com/testings/


*** Keywords ***
Browser Start and Maximize
    Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window


Click signUP Enter Username Password
    Click Button    xpath://input[@type='submit']
    Input Text  name:fld_username  Ganesh
    Input Text  name:fld_email  salunkhe@gmail.com
    Input Text    xpath://input[@name='fld_password']    ganusalunkhe
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
