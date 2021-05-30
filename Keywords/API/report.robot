*** Settings ***
Library         RequestsLibrary
Library         JSONLibrary
Library         Collections

*** Variables ***

${base_url}     https://automationintesting.online/

*** Keywords ***
Report number:
    [Arguments]      ${report_no}
    ${response}=     get request      automationtesting           report/${report_no}
    [Return]         ${response}