*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../TestCases/LoginRessources.robot
Suite Setup       open my Browser
Suite Teardown    Close all Browser
Test Template     Invalid login


*** Variables ***
${wrong_username}    HT950@gmail.com
${wrong_password}    123456
${right_username}    admin@youstore.com 
${right_password}    admin

*** Test Cases ***        username            password

Right user empty pwd    ${right_username}    ${EMPTY}
Right user wrong pwd    ${right_username}    ${wrong_password}
wrong user right pwd    ${wrong_username}    ${right_password}
wrong user empty pwd    ${wrong_username}    ${EMPTY}
wrong user wrong pwd    ${wrong_username}    ${wrong_password}
empty user right pwd    ${EMPTY}             ${right_password}    

*** Keywords ***

Invalid login
    [Arguments]    ${username}    ${password}
    Input username    ${username}  
    Input Pwd     ${password}
    Click Login Button
    Error Message should be visible
    
    