*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${url}  https://app.ouickly.fr/  
${Browser}    firefox
${Logout}    xpath://a[contains(.,'Déconnexion')] 
${Error_user_Info}    xpath://div[@class='alert alert-danger']
${OuicklyLogo}        id:ouicklyLogo
${OuicklyAvatar}      xpath://img[@class='img-fluid img-radius hei-55']

*** Keywords ***

open my Browser
    Open Browser      ${url}    ${Browser}
    Maximize Browser Window
    
Close all Browser 
    Close All Browsers
    
Open login page
    
    Go To    ${url}
    
Input username
   [Arguments]    ${username}
   Input Text    id:inputEmail4   ${username} 
   
Input Pwd
   [Arguments]    ${password}
   Input Text    id:password   ${password} 
   
Click Login Button
    Click Element    xpath://button[contains(.,'Connexion')]
    
Ouickly Logout 
    Click Element   xpath://em[@class='icon feather icon-user f-20']
    Wait Until Element Contains    ${Logout}    Déconnexion    
    Click Element   ${Logout}   
    
Error Username Message should be visible
    Page Should Contain    Ce login est introuvable
    
Error Password Message should be visible
    Page Should Contain    Limite de tentative atteint vous êtes bloqués
    
Dashboard should be visible
    Page Should Contain    Mon tableau de bord
    
Ouickly Screenshot Logo
    Wait Until Element Is Enabled    ${OuicklyLogo} 
    Capture Element Screenshot    ${OuicklyLogo}   C:/Users/HediTOUMI/workspace/Screenshot_RobotFramework/OuicklyLogo1.png   
    Capture Page Screenshot 
Ouickly Screenshot User avatar
    Wait Until Element Is Enabled    ${OuicklyAvatar} 
    Capture Element Screenshot    ${OuicklyAvatar}   C:/Users/HediTOUMI/workspace/Screenshot_RobotFramework/OuicklyAvatar.png   
    Capture Page Screenshot 