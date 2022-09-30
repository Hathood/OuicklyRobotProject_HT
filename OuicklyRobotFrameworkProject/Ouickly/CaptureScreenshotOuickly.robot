*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../Ouickly/LoginOuicklyRessources.robot
Suite Setup       open my Browser
Suite Teardown    Close all Browser
Test Template     Screenshot Logo

*** Variables ***
${username}    hedi.toumi@aymax.fr
${password}    Hedi-@1991
*** Test Cases ***
Screenshot Ouickly Login    ${ouicklyLogo}     ${username}    ${password}    ${ouicklyAvatar} 

*** Keywords ***
Screenshot Logo
    [Arguments]    ${ouicklyLogo}   ${username}    ${password}    ${ouicklyAvatar} 
    Ouickly Screenshot Logo 
    Input Text    id:inputEmail4   ${username}    
    Input Text    id:password   ${password}
    Click Login Button
    Ouickly Screenshot User avatar   
    Ouickly Logout