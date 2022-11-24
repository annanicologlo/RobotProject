*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
OuverturePageWeb
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window
    Sleep    4
    Close Browser
    
