*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://thetestingworld.com/


*** Test Cases ***
TC004 Browser Start and Close
     Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
     Maximize Browser Window
     Execute Javascript    window.scrollTo(0,2000)
