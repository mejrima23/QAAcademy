*** Settings ***

Resource        ../../Keywords/API/room.robot

Suite Setup     Create Session     automationtesting    ${base_url}

*** Test Cases ***

Get room+
    [Documentation]   Gets resource by room number. This Test Case is positive.
    ${response}=                      Room number:           1
    log to console                    ${response.text}
    should be equal as integers       ${response.status_code}   200

Create room+
    ${response}=     Inputs for resource creation:    True  This is description  WiFi  image  01   50   10  Double
    log to console   ${response.status_code}
    log to console   ${response.content}
    ${status_code}=  convert to string                ${response.status_code}
    should be equal  ${status_code}                   200

Delete room+
    ${response}=     Inputs for resource deleting:    01
    log to console   ${response.status_code}
    log to console   ${response.content}
    ${status_code}=  convert to string                ${response.status_code}
    should be equal  ${status_code}                   405
