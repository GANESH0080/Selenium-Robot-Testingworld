*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://thetestingworld.com/testings/

*** Test Cases ***
TC001 Browser Start and Close
    [Documentation]     This TC for Open and Close browser
    Open Browser    ${URL}  ${Browser}
    Close All Browsers
