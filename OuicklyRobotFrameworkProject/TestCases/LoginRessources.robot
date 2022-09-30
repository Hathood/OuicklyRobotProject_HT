*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${url}  https://admin-demo.nopcommerce.com/
${Browser}    firefox
${super secret}=    my super secret password

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
   Input Text    id:Email    ${username} 
   
Input Pwd
   [Arguments]    ${password}
   Input Text    id:Password   ${password} 
   
Click Login Button
    Click Element    xpath://button[@class='button-1 login-button']  
    
Click Logout Link
    Click Link    Logout
    
Error Message should be visible
    Page Should Contain    Login was unsuccessful
    
Dashboard should be visible
    Page Should Contain    Dashboard           