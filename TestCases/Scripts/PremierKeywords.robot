*** Settings ***
Documentation     Fichiers de scripts pour le module RQ3 : Sites.
Library    SeleniumLibrary
Variables    ../Ressources/Locators/Locators.py
Resource    ../Ressources/Keywords/Keywords.robot

*** Variables ***
${vURL}    http://localhost:8986/share/page/
${vBrowser}    chrome
${vUsername}    2203855
${vPassword}    12345678
${TIMEOUT}    5s






*** Test Cases ***
Test
    Login    ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword} 
    Logout

