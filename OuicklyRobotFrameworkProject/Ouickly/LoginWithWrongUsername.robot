*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../Ouickly/LoginOuicklyRessources.robot
Suite Setup       open my Browser
Suite Teardown    Close all Browser
Test Template     Invalid login


*** Variables ***
${wrong_username}    HT950@gmail.com
${wrong_password}    123456
${right_username}    hedi.toumi@aymax.fr
${right_password}    Hedi-@1991

*** Test Cases ***        username            password

wrong user right pwd    ${wrong_username}    ${right_password}
   
*** Keywords ***

Invalid login
    [Arguments]    ${username}    ${password}
    Input username    ${username}  
    Input Pwd     ${password}
    Click Login Button
    Wait Until Element Contains    ${Error_user_Info}       Ce login est introuvable 
    Error password Message should be visible
    
    