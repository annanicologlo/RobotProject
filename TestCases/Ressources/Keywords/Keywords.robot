*** Settings ***
Documentation     Fichiers de scripts pour le module RQ3 : Sites.
Library    SeleniumLibrary
Variables    ../Locators/Locators.py

*** Variables ***
${vURL}    http://localhost:8986/share/page/
${vBrowser}    chrome
${vUsername}    2203855
${vPassword}    12345678
${TIMEOUT}    5s







*** Keywords ***
Login
    # vURL contient l'adresse URL de la page web
    # vBrowser contient l'identifiant du navigateur cible
    # vUsername contient le login
    # vPassword contient le mot de passe
    [Arguments]    ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword}
    # Definir la valeur de timeout pour le cas de test
    Set Selenium Timeout    ${TIMEOUT}
    # Ouvrir le navigateur en precisant l'URL et le navigateur
    Open Browser    ${vURL}    ${vBrowser}
    # Maximiser la fenetre du navigateur
    Maximize Browser Window
    # Saisie du login
    Input text    ${txt_UserName}    ${vUsername}
    # Saisie du mot de passe    
    Input text    ${txt_Password}    ${vPassword}
    # Click sur le bouton Connexion
    Click Button   ${btn_Login}
    # S'assurer que la page est chargee
    Wait Until Element Is Visible    ${lblTitle}
    # S'assurer que l'utilisateur est connecte et que le tableau de bord est affiche
    Element Should Contain     ${lblTitle}    Tableau de bord de

Logout
    #sleep    3s
    Wait Until Element Is Visible    ${link_HeaderUserMenu}
    Click Element    ${link_HeaderUserMenu}
    Wait Until Element Is Visible    ${link_HeaderDeconnexion}
    Click Element    ${link_HeaderDeconnexion}
    [Teardown]    Close Browser