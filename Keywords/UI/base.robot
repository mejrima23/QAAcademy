*** Settings ***
Library     ExtendedSelenium2Library
Resource    login.robot

*** Variables ***

*** Keywords ***

Login:
    [Documentation]               Login as Admin
    Open Browser as Admin
    Input username:               ${USERNAME}
    Input password:               ${PASSWORD}
    Click login button
