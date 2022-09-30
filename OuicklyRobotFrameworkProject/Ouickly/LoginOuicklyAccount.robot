*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${url}  https://app.ouickly.fr/  
${Browser}    firefox
${super secret}=    my super secret password
*** Test Cases ***

TC1 L
   [Tags]     TC1 AccessOuickly
    Open Browser      ${url}    ${Browser}
    Maximize Browser Window
    Title Should Be    Ouickly    
    
    # Fill Login Field!
    ${Login_txt}    set variable    id:inputEmail4
    Element Should Be Visible    ${Login_txt}    
    Element Should Be Enabled    ${Login_txt}
    Input Text    ${Login_txt}    hedi.toumi@aymax.fr    
    Sleep    2
    
    # Fill Login Field
    ${Password_txt}    set variable    id:password
    Element Should Be Visible    ${Password_txt}    
    Element Should Be Enabled    ${Password_txt}
    Input Text    ${Password_txt}    Hedi-@1991    ${super secret}
    Sleep   5

    #Show Password 
    Click Element     //em[@class='fa fa-eye-slash']
    Get Text      ${Password_txt}       
    Sleep    2  
    
    # Connexion
    Click Button    //button[contains(.,'Connexion')]
    Sleep    2    
    
    # Close Browser
    Close Browser
    

