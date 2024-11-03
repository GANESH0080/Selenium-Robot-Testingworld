*** Settings ***
Library    ../PythonUserDefineKeywords/ArgumentCustomUserDefKeyword.py
Library    SeleniumLibrary


*** Keywords ***
Create folder and subfolder at runtime
    [Arguments]    ${foldern}    ${foldn}     ${subfoldern}
    create_folder    ${foldern}
    create_sub_folder     ${foldn}    ${subfoldern}
    Open Browser    https://thetestingworld.com/testings/    chrome
