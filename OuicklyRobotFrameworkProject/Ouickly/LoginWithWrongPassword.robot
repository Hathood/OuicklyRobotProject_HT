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

right user wrong pwd    ${right_username}    ${wrong_password}
   
*** Keywords ***

Invalid login
    [Arguments]    ${username}    ${password}
    Input username    ${username}  
    Input Pwd     ${password}
    Click Login Button
    Wait Until Element Contains    ${Error_user_Info}       Limite de tentative atteint vous êtes bloqués
    
    