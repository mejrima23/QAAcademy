*** Settings ***
Library         RequestsLibrary
Library         JSONLibrary
Library         Collections

*** Variables ***

${base_url}     https://automationintesting.online/

*** Keywords ***
Message number:
    [Arguments]      ${message_no}
    ${response}=     get request      automationtesting           booking/${message_no}
    [Return]         ${response}