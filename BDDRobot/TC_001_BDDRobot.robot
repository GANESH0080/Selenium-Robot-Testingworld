*** Settings ***
Resource    ../Resources/resource1.robot

*** Variables ***


*** Test Cases ***
Testcase in BDD format
    Given Browser Start and Maximize
    When Click signUP Enter Username Password
    And Radiobtn Checkbox Link selection
    Then Checkbox selection