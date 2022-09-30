*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${url}     https://swisnl.github.io/jQuery-contextMenu/demo.html
${url1}    https://testautomationpractice.blogspot.com/
${url2}    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
${Browser}    firefox

*** Test Cases ***
MouseActions
    #Right Click with the mouse 
    Open Browser     ${url}    ${Browser}   
    Maximize Browser Window
    Open Context Menu    xpath://span[@class='context-menu-one btn btn-neutral']
    Sleep    1
   
  #Double click
    Go To   ${url1}    
    Maximize Browser Window
    Wait Until Element Contains    xpath://button[.='Copy Text']   Copy Text    
    Double Click Element    xpath://button[.='Copy Text']
    Sleep    1    
    
  #Drag & Drop   
    Go To       ${url2}
    Maximize Browser Window
    Set Selenium Speed    1 seconds
    
    Drag And Drop    id:box6    id:box106
    Drag And Drop    id:box3    id:box103
    Drag And Drop    id:box1    id:box101
    Drag And Drop    id:box5    id:box105
    Drag And Drop    id:box4    id:box104
    Drag And Drop    id:box7    id:box107
    Sleep    1    
    
  # Close all browser   
    Close All Browsers