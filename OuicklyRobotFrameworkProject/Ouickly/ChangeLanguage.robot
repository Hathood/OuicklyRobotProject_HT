*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary


*** Variables ***
${url}  https://app.ouickly.fr/  
${Browser}    firefox

*** Test Cases ***

TC1 ChangeLanguage
   
   [Tags]     TC1 AccessOuickly
    Open Browser      ${url}    ${Browser}
    Maximize Browser Window
    Sleep    1 
    
    #Change Page Language
    Select From List By Label    //select[@name='selectLogin']    Anglais    
    Sleep    3
    Close Browser