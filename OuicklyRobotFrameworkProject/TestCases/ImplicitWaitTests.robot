*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
*** Variables ***
${url}  https://demowebshop.tricentis.com/register
${Browser}    firefox
${super secret}=    my super secret password
${implicit_time}=    get selenium implicit wait

*** Test Cases ***

TC1 L
    [Tags]     TC1 DemoWWebshopAccess
    Open Browser      ${url}    ${Browser}
    Maximize Browser Window
    Title Should Be    Demo Web Shop. Register
    
    Log To Console    get selenium implicit wait    
    Set Selenium Implicit Wait    10 seconds
    Log To Console    get selenium implicit wait    
   
    #Select Gender
    Select Radio Button    Gender  M

    #Fill First Name Field
    ${FirstName}    set variable    id:FirstName 
    Element Should Be Visible    ${FirstName}
    Element Should Be Enabled    ${FirstName}
    Input Text    ${FirstName}      ERIC

    #Fill Last Name Field
    ${LastName}    set variable    id:LastName 
    Element Should Be Visible    ${LastName}
    Element Should Be Enabled    ${LastName}
    Input Text   ${LastName}     LORIS

    #Fill Email Field
    ${Email}    set variable    id:Email
    Element Should Be Visible    ${Email}
    Element Should Be Enabled    ${Email}
    Input Text   ${Email}     eric.loriss@gmail.com

    #Fill Password Field
    ${Password}    set variable    id:Password
    Element Should Be Visible    ${Password}
    Element Should Be Enabled    ${Password}
    Input Text   ${Password}   aymax-@2022    ${super secret}

    #Fill Confirm Password Field
     ${Confirm_Password}    set variable    id:ConfirmPassword
    Element Should Be Visible    ${Password}
    Element Should Be Enabled    ${Password}
    Input Text   ${Password}   aymax-@2022    ${super secret}
  
    # Close Browser
    Close Browser
        