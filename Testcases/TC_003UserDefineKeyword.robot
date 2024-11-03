*** Settings ***
Library    SeleniumLibrary
Test Timeout    3mins

*** Variables ***
${Browser}  chrome
${URL}    https://thetestingworld.com/testings/

*** Test Cases ***
TC003 Browser Start and Close
    [Documentation]    This TC for END TO END flow
    [Timeout]    80s    Testing123Failed TC
    Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    #Calling User defined keyword
    Click signUP Enter Username Password
    #Calling User defined keyword
    Radiobtn Checkbox Link selection
    #Calling User defined keyword
    Checkbox selection



*** Keywords ***
Click signUP Enter Username Password
    [Documentation]    This TC for SignUp
    #[Timeout]    10s
    Click Button    xpath://input[@type='submit']
    Input Text  name:fld_username  Ganesh
    Input Text  name:fld_email  salunkhe@gmail.com
    Input Text    xpath://input[@name='fld_password']    ganusalunkhe
    Clear Element Text  xpath://input[@name='fld_password']


Radiobtn Checkbox Link selection
    [Documentation]    This TC for Checkbox / Link / Radio button
    #[Timeout]    10s
    Select Radio Button  add_type  home
    Select Checkbox    name:terms
    Click Link    xpath://a[text()='Read Detail']
    Click Element    xpath://a[text()='X']


Checkbox selection
    [Documentation]    This TC for Checkbox
    #[Timeout]    10s
    Set Selenium Speed    2seconds
    Select From List By Index    xpath://select[@name='sex']    2
    Select From List By Label    xpath://select[@name='country']  India
    Select From List By Value    xpath://select[@name='state']  22