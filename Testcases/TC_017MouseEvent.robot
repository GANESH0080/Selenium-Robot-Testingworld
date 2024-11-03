*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://thetestingworld.com/


*** Test Cases ***
TC004 Browser Start and Close
     Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
     Maximize Browser Window

     Mouse Down    //a[text()='Quick Demo']
     Mouse Up      //a[text()='Quick Demo']
     Set Selenium Speed    2
     Mouse Over    //*[text()='Contact Us']
     Mouse Over    //*[text()='CERTIFICATIONS']
