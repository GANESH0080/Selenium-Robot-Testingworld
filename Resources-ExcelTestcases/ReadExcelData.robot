*** Settings ***
Library    ..//ExcelReadUserDefine/ReadExcel.py


*** Keywords ***
Read number of rows
    [Arguments]    ${sheetname}
    ${totalrows} =     Fetch number of rows     ${sheetname}
    [Return]    ${totalrows}

Read cell data
    [Arguments]    ${sheetname}    ${row}    ${cell}
    ${celldata} =     fetch cell data     ${sheetname}    ${row}    ${cell}
    [Return]    ${celldata}