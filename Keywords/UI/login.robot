*** Settings ***

Library                    ExtendedSelenium2Library
Variables                  ../../variables.py


*** Variables ***
${IN_USERNAME}            id=username
${IN_PASSWORD}            id=password
${LOGIN_BTN}              id=doLogin
${LOGOUT}                 xpath=//a[text()='Logout']
${USERNAME}               admin
${PASSWORD}               password


*** Keywords ***

Open Browser as Admin
    [Documentation]               Opens browser to login page
    open browser      ${URL}      browser=${BROWSER}
    maximize browser window

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

