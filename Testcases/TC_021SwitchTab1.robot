*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://robotframework.org/


*** Test Cases ***
TC21 Browser Start and Close
     Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
     Maximize Browser Window
     Click Element    //a[text()='GitHub']
     Set Selenium Speed    2
     ${windows} =    Get Window Handles
     #@{windows}    Get Window Handles
     Switch Window     ${windows}[0]
     Switch Window     ${windows}[1]
     Wait Until Element Is Visible    xpath:(//a[@href='http://robotframework.org'])[6]    10
     Click link    Xpath:(//a[@href='http://robotframework.org'])[6]
     Switch Window     ${windows}[0]
     Switch Window    NEW


     



