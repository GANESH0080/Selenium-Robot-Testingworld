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
     Page Should Contain Element        css:.HeaderMenu-link--sign-in
     Page Should Contain Textfield    xpath://input[@aria-label='Go to file']
     Page Should Contain Button    css:.HeaderMenu-nav ul li:nth-child(1) button
     Page Should Contain Link        css:.HeaderMenu-link--sign-in




    

     



