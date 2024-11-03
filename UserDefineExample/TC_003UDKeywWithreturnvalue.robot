*** Settings ***
Resource    ../Resources/resource3.robot

*** Variables ***
${URL}    https://thetestingworld.com/testings/
${browser}    chrome



*** Test Cases ***
TC_001 Browser activity
    [Tags]    SMOKE
    ${res}=    Browser Start and Maximize    ${URL}      ${browser}
    Log To Console         ${res}
    Click signUP Enter Username Password
    Radiobtn Checkbox Link selection
    Checkbox selection
