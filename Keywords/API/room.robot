*** Settings ***
Library         RequestsLibrary
Library         JSONLibrary
Library         Collections

*** Variables ***

${base_url}     https://automationintesting.online/

*** Keywords ***
Room number:
    [Arguments]      ${room_no}
    ${response}=     get request      automationtesting           room/${room_no}
    [Return]         ${response}

Inputs for resource creation:
    [Arguments]      ${accessabile}  ${description}   ${features}  ${image}  ${roomNumber}  ${roomPrice}   ${roomid}   ${type}
    ${body}=         create dictionary      accessible=${accessabile}  description=${description}  features=${features}  image=${image}  roomNumber=${roomNumber}    roomPrice=${roomPrice}   roomid=${roomid} type=${type}
    ${header}=       create dictionary      Content-Type=application/json; charset=utf-8
    ${response}=     post request           automationtesting  /room    data=${body}   headers=${header}
    [Return]         ${response}

Inputs for resource deleting:
    [Arguments]      ${roomid}
    ${body}=         create dictionary      roomid=${roomid}
    ${header}=       create dictionary      Content-Type=application/json; charset=utf-8
    ${response}=     delete request         automationtesting  /room    data=${body}   headers=${header}
    [Return]         ${response}