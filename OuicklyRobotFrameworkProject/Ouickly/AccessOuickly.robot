*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary


*** Variables ***
${url}  https://app.ouickly.fr/  
${Browser}    firefox

*** Test Cases ***

TC1 AccessOuickly
   [Tags]     TC1 AccessOuickly
    Open Browser      ${url}    ${Browser}
    Maximize Browser Window
    Sleep    2   
    Close Browser
    

