*** Settings ***
Suite Setup        Before Each Subfolder Test suite
Suite Teardown        After Each Subfolder Test suite

*** Variables ***


*** Keywords ***
Before Each Subfolder Test suite
    Log To Console    printing Before Each Subfolder Test Suite


After Each Subfolder Test suite
    Log To Console    printing After Each Subfolder Test Suite