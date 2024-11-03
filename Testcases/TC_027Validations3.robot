*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://thetestingworld.com/testings/
${expected}  Register now and kick start your career as a Software Testing Pro!
${expected1}  egister now and kick start your career as a Software Testing Pro!

*** Test Cases ***
TC23 Switch browser tabs using Titles
     Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
     Maximize Browser Window
     Set Selenium Speed    2
     Element Text Should Be    xpath://div[@id='tab-content1']/p    ${expected}
     Element Text Should Not Be   xpath://div[@id='tab-content1']/p    ${expected1}
     Title Should Be     Login & Sign Up Forms
     Element Should Be Enabled






    

     



