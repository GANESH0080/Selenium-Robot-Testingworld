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
    Click Button    xpath://input[@type='submit']
    Input Text  name:fld_username  Shlok
    Input Text  name:fld_email  shlok@test.com
    Input Text    xpath://input[@name='fld_password']    123456
    Clear Element Text  xpath://input[@name='fld_password']
    Select Checkbox    name:terms
    Click Link    xpath://a[text()='Read Detail']
    Capture Page Screenshot    D:/RobotFramework/AutomationUdemy2/TC_012.png
    Capture Page Screenshot
    Capture Page Screenshot    ./Screenshots/TC12.png
