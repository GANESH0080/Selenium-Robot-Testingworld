*** Settings ***
Library    SeleniumLibrary



*** Keywords ***
Start Browser and Maximize
    [Arguments]    ${URL}    ${Browser}
     Open Browser    ${URL}    ${Browser}
     Maximize Browser Window


Close Browser window
    ${title}=    Get Title
    Log To Console       ${title}
    Close Browser


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


Before each TestSuite
    Log To Console    Before Each TestSuite


After each TestSuite
    Log To Console    After Each TestSuite



