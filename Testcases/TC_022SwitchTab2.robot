*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://robotframework.org/
${value}    GitHub - robotframework/robotframework: Generic automation framework for acceptance testing and RPA


*** Test Cases ***
TC22 Switch browser tabs
     Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
     Maximize Browser Window
     Set Selenium Speed    2
     Click Element    //a[text()='GitHub']
     Switch Window    NEW
     ${url} =    Get Location
     Log To Console    ${url}
     Click link    Xpath:(//a[@href='http://robotframework.org'])[6]
     Switch Window    NEW
     @{list2}        Get Window Handles
     FOR     ${WIN}    IN    @{list2}
         log to console    ${WIN}
     END
     @{titles}     Get Window Titles
     log to console    ${titles}
     Close Window

    



    

     



