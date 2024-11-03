*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}    https://thetestingworld.com/testings/

*** Test Cases ***
Fetch Data title/ Selenium Speed / locators value
    Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    #Selecting value in dropdown
    Select From List By Index    xpath://select[@name='sex']    2
    #getting current browser url using Get location keyword
    ${loc} =     Get Location
    Log To Console        ${loc}

    #Fetching placeholder attribute value for username element
    ${attr}     Get Element Attribute       name:fld_username    placeholder
    Log To Console      ${attr}

    ${cntelement}     Get Element Count    //div[@class='right']/a
    Log To Console    ${cntelement}

    #Swithching to new window and fetching URL using Get location keyword
    Click Link    //div[@class='right']/a[4]
    Switch Window    NEW
    ${loc1} =     Get Location
    Log To Console        ${loc1}

    #Fetching HTML code of current page
    ${source} =    Get Source
    Log To Console        ${source}
    
    


