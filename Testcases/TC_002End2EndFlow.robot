*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://thetestingworld.com/testings/

*** Test Cases ***
TC002 Browser Start and Close
    Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    Click Button    xpath://input[@type='submit']
    Input Text  name:fld_username  Ganesh    
    Input Text  css:.field  Salunkhe
    Input Text    xpath://input[@name='fld_password']    ganusalunkhe
    Clear Element Text  xpath://input[@name='fld_password']
    #Close All Browsers
    Select Radio Button  add_type  home
    Select Checkbox    name:terms
    Click Link    xpath://a[text()='Read Detail']
    Click Element    xpath://a[text()='X']
    Set Selenium Speed    2seconds
    Select From List By Index    xpath://select[@name='sex']    2
    Select From List By Label    xpath://select[@name='country']  India
    Select From List By Value    xpath://select[@name='state']  22