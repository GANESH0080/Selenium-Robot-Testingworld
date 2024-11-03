*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://robotframework.org/
${value}    GitHub - robotframework/robotframework: Generic automation framework for acceptance testing and RPA


*** Test Cases ***
TC23 Switch browser tabs using Titles
     Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
     Maximize Browser Window
     Set Selenium Speed    2
     Click Element    //a[text()='GitHub']
     Switch Window    NEW
     Page Should Contain    Pricing
     Switch Window    MAIN
     Page Should Not Contain     Getstarted


    

     



