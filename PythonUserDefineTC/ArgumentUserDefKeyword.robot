*** Settings ***
Resource        ../Resources/ResArgumentUserDefKeyword.robot

*** Test Cases ***
Create folder - Subfolder
      Create folder and subfolder at runtime    GaneshFolder    GanuFolder    SalunkheSubfolder
