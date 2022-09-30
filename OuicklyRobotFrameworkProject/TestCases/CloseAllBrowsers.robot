*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${url}  https://demowebshop.tricentis.com/register
${url1}  https://app.ouickly.fr/  
${url2}  https://www.ldlc.com/
${url3}  https://www.tooltester.com/fr/blog/meilleurs-logiciels-e-commerce-gratuits/
${Browser}    firefox 

*** Test Cases ***
TC1 L
   [Tags]     TC1 CloseAllBrowser
    
    #Open URL1
    Open Browser      ${url}    ${Browser}
    Maximize Browser Window
    
    #Open URL1
    Open Browser      ${url1}    ${Browser}
    Maximize Browser Window
    
    #Open URL1
    Open Browser      ${url2}    ${Browser}
    Maximize Browser Window
    
    Open Browser      ${url2}    ${Browser}
    Maximize Browser Window
    
    Close All Browsers
   