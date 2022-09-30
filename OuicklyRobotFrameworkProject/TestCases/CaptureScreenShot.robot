*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${url}     https://opensource-demo.orangehrmlive.com/
${Browser}    firefox

*** Test Cases ***
LoginTC
  
   [Tags]     TC1 orangeHRMLogin
    Open Browser      ${url}    ${Browser}
    Maximize Browser Window
    Title Should Be       OrangeHRM    
   
    # Fill Login Field!
    ${Login_txt}    set variable    name:username
    Element Should Be Visible    ${Login_txt}    
    Element Should Be Enabled    ${Login_txt}
    Input Text    ${Login_txt}    Admin
  
    # Fill Login Field
    ${Password_txt}    set variable   name:password
    Element Should Be Visible    ${Password_txt}    
    Element Should Be Enabled    ${Password_txt}
    Input Text    ${Password_txt}    admin123

    # Connexion
    Click Button   xpath: //button[@type='submit']
    Sleep    1   
    #Capture Screenshot orangeHRM Logo
    Capture Element Screenshot    //img[@alt='client brand banner']    C:/Users/HediTOUMI/workspace/Screenshot_RobotFramework/Logo.png   
    Capture Page Screenshot     
    
    #AccessBuzzTab
    Wait Until Element Is Enabled    xpath://a[.='Dashboard']
    Click Element    xpath://a[.='Dashboard']
  
    #Capture Screenshot orangeHRM Logo
    Wait Until Element Is Enabled    xpath://img[@class='orangehrm-module-under-development-img']
    Capture Element Screenshot    xpath://img[@class='orangehrm-module-under-development-img']   C:/Users/HediTOUMI/workspace/Screenshot_RobotFramework/Buzz1.png   
    Capture Page Screenshot 
   
    # Close Browser
    Close Browser