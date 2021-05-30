*** Settings ***

Resource        ../../Keywords/API/message.robot

Suite Setup     Create Session     automationtesting    ${base_url}

*** Test Cases ***

Get message+
    [Documentation]   Gets resource by message number. This Test Case is positive.
    ${response}=                      Message number:           1
    log to console                    ${response.text}
    should be equal as integers       ${response.status_code}   200