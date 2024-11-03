*** Settings ***
Library    ../PythonUserDefineKeywords/CustomUserDefKeyword.py
Library    SeleniumLibrary


*** Keywords ***
Create folder and subfolder at runtime
    create_folder
    create_sub_folder
    Open Browser    https://thetestingworld.com/testings/    chrome
