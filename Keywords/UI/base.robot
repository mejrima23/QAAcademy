*** Settings ***
Library                 ExtendedSelenium2Library
Variables               ../../variables.py
Resource                ../../Keywords/UI/login.robot

*** Variables ***
${LOGOUT_BTN}           //*[@class='nav-item']//a[text()='Logout']

*** Keywords ***

Open Browser as Admin
    [Documentation]               Opens browser to login page
    open browser      ${URL}      browser=${BROWSER}
    maximize browser window


Login:
    [Arguments]                   ${USERNAME}     ${PASSWORD}
    [Documentation]               Login as Admin
    Input username:               ${USERNAME}
    Input password:               ${PASSWORD}
    Click login button

Logout
   click element                  ${LOGOUT_BTN}
