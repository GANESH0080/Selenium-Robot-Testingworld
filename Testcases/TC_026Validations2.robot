*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://thetestingworld.com/testings/


*** Test Cases ***
TC23 Switch browser tabs using Titles
     Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
     Maximize Browser Window
     Set Selenium Speed    2
     Select Checkbox    name:terms
     Checkbox Should Be Selected        name:terms
     Unselect Checkbox    name:terms
     Checkbox Should Not Be Selected        name:terms






    

     



