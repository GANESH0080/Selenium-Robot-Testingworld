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
     Go To    https://www.google.com/
     ${URL}=    Get Location
     Log To Console    ${URL}
     Go Back
     ${URL1}=    Get Location
     Log To Console    ${URL1}