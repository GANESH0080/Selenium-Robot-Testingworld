*** Settings ***
Resource    ../Resources/resource2.robot

*** Variables ***
${URL}    https://thetestingworld.com/testings/
${browser}    chrome



*** Test Cases ***
TC_001 Browser activity
    [Tags]    SMOKE
    Browser Start and Maximize    ${URL}      ${browser}
    Click signUP Enter Username Password
    Radiobtn Checkbox Link selection
    Checkbox selection
