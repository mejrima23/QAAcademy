*** Settings ***

Library                    ExtendedSelenium2Library

*** Variables ***
${IN_USERNAME}            id=username
${IN_PASSWORD}            id=password
${LOGIN_BTN}              id=doLogin
${LOGOUT}                 xpath=//a[text()='Logout']
${USERNAME}               admin
${PASSWORD}               password


*** Keywords ***

Input username:
    [Documentation]               Inputs username
    [Arguments]                   ${USERNAME}
    input text                    ${IN_USERNAME}   ${USERNAME}

Input password:
    [Documentation]               Inputs password
    [Arguments]                   ${PASSWORD}
    input password                ${IN_PASSWORD}   ${PASSWORD}

Click login button
    [Documentation]               Click on login button
    click element                 ${LOGIN_BTN}

