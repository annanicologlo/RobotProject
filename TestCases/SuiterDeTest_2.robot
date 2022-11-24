*** Settings ***
# importer les librairies
Library    SeleniumLibrary 


*** Variables ***  # creer variables

*** Test Cases ***
tc01 loginTest # nom de cas de test
    Open Browser    https://videotron.com    gc
    Maximize Browser Window
    Sleep    4
    Close Browser
tc02 logoutTest
    Open Browser    https://videotron.com    gc
    Maximize Browser Window
    Sleep    4
    Close Browser

*** Keywords ***

