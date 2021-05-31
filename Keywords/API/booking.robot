*** Settings ***
Library         RequestsLibrary
Library         JSONLibrary
Library         Collections

*** Variables ***

${base_url}     https://automationintesting.online/

*** Keywords ***
Booking number:
    [Arguments]      ${booking_no}
    ${response}=     get request      automationtesting           booking/${booking_no}
    [Return]         ${response}
