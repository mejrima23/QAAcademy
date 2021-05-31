*** Settings ***

Resource        ../../Keywords/API/branding.robot

Suite Setup     Create Session     automationtesting    ${base_url}

*** Test Cases ***

Get branding+
    [Documentation]   Gets branding resource. This Test Case is positive.
    ${response}=     get request      automationtesting           branding/
    log to console                    ${response.text}
    should be equal as integers       ${response.status_code}   200
