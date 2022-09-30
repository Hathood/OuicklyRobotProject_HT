*** Settings ***
Documentation     DataDriver Testing with Excel
Library           SeleniumLibrary
Resource          ../TestCases/LoginRessources.robot
Library           DataDriver    ../TestData/LoginData.xls    feuil_name=Feuil1

Suite Setup       open my Browser
Suite Teardown    Close all Browser
Test Template     Invalid login

*** Test Cases ***    

LoginTestwithExcel using     username    password


*** Keywords ***

Invalid login
    [Arguments]    ${usernane}    ${password}
    Input username    ${usernane}
    Input Pwd         ${password}
    Click Login Button
    Error Message should be visible