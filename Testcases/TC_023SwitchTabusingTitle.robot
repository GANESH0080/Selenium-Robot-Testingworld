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
     Switch Window    Robot Framework
     Switch Window    GitHub - robotframework/robotframework: Generic automation framework for acceptance testing and RPA
     ${url} =    Get Location
     Log To Console    ${url}
     Click link    Xpath:(//a[@href='http://robotframework.org'])[6]
     Switch Window    Robot Framework
     Switch Window    GitHub - robotframework/robotframework: Generic automation framework for acceptance testing and RPA

    

     



