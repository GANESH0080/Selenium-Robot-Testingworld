*** Settings ***
Library    SeleniumLibrary
Library    ../PythonUserDefineKeywords/readJsonLocators.py

*** Variables ***
${Browser}  chrome
${URL}    https://thetestingworld.com/testings/

*** Test Cases ***
TC002 Browser Start and Close
    Open Browser    ${URL}  ${Browser}    options=add_experimental_option("detach", True)
    Maximize Browser Window
    ${submitbtn} =    Read Element Locator    Registration.btn_submit_xpath
    Click Button    xpath:${submitbtn}
    ${username} =    Read Element Locator    Registration.txtfield_username_name
    Input Text  name:${username}  Ganesh
    ${email} =    Read Element Locator    Registration.txtfield_email_css
    Input Text  css:${email}  Salunkhe
    ${password} =    Read Element Locator    Registration.txtfield_password_xpath
    Input Text    xpath:${password}    ganusalunkhe
    Clear Element Text  ${password}
    #Close All Browsers
    ${radiobtn} =    Read Element Locator    Registration.rdbtn_address_type_name
    Select Radio Button  ${radiobtn}  home
    ${checkTerms} =    Read Element Locator    Registration.chkbox_terms_name
    Select Checkbox    name:${checkTerms}
    ${linkreaddetails} =    Read Element Locator    Registration.link_readdetails_xpath
    Click Link    xpath:${linkreaddetails}
    ${closebtn} =    Read Element Locator    Registration.btn_close_xpath
    Click Element    xpath:${closebtn}
    Set Selenium Speed    2seconds
    ${dropdgender} =    Read Element Locator    Registration.drp_gender_xpath
    Select From List By Index    xpath:${dropdgender}    2
    ${dropdcountry} =    Read Element Locator    Registration.drp_country_xpath
    Select From List By Label    xpath:${dropdcountry}  India
    ${dropdstate} =    Read Element Locator    Registration.drp_state_xpath
    Select From List By Value    xpath:${dropdstate}   22



*** Keywords ***
Read Element Locator
    [Arguments]    ${JasonPath}
    ${result}=    read_json_locator     ${JasonPath}
    [return]   ${result}