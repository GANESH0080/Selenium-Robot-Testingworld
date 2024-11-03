*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://thetestingworld.com/


*** Test Cases ***
TC004 Browser Start and Close
     Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
     Maximize Browser Window
     Open Browser    https://www.google.com/  ${Browser}    options=add_experimental_option("detach", True)
     Maximize Browser Window
     Set Selenium Speed    2
     Switch Browser    1
     ${parenturl}=    Get Location
     Log To Console    ${parenturl}
     Click Element          //a[text()='Quick Demo']
     Input Text    //input[@id='wdform_1_element_first2']    Ganesh
     Input Text    //input[@id='wdform_1_element_last2']    Salunkhe
     Switch Browser    2
     ${childurl}=    Get Location
     Log To Console    ${childurl}
     Input Text    id:APjFqb    TechM
