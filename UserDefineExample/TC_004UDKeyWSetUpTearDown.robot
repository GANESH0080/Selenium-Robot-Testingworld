*** Settings ***
Resource    ../Resources/resource4.robot
Test Setup       Start Browser and Maximize  ${URL}      ${browser}
Test Teardown    Close Browser window
Suite Setup         Log To Console    TestSuite Started using Suite Setup
Suite Teardown      Log To Console    TestSuite END using Suite TearDown

*** Variables ***
${URL}    https://thetestingworld.com/testings/
${browser}    chrome



*** Test Cases ***
TC_001 END TO END 1
    [Tags]    REGRESSION
    Click signUP Enter Username Password
    Radiobtn Checkbox Link selection
    Checkbox selection


#TC_002 END TO END 2
#    log to console    This is Testcase number 2
    
TC_003 END TO END 3
    Click signUP Enter Username Password
    Radiobtn Checkbox Link selection
    Checkbox selection


