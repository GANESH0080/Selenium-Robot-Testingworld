*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://robotframework.org/


*** Test Cases ***
TC20 Browser Start and Close
     Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
     Maximize Browser Window
     Click Element    //a[text()='GitHub']

     ${parentTab}=  Switch Window    NEW
     Set Selenium Speed    2
     Click Element         xpath://span[text()='Code']
     Switch Window        ${parentTab}
     Click Element    //button[text()='Community']


     Switch Window     NEW
     Wait Until Element Is Visible    xpath:(//a[@href='http://robotframework.org'])[6]    10
     Click link    Xpath:(//a[@href='http://robotframework.org'])[6]
     ${child} =    Switch Window    NEW
     Click Button    //button[text()='Development']
     
     Switch Window        ${parentTab}
     Switch Window        ${child}
     Switch Window    NEW
     



