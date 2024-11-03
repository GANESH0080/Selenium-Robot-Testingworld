*** Settings ***
Resource    ../Resources/resource1.robot



*** Test Cases ***
TC_001 Browser activity
    [Tags]    SMOKE
    Browser Start and Maximize
    Click signUP Enter Username Password
    Radiobtn Checkbox Link selection
    Checkbox selection
