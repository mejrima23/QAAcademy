*** Settings ***

Resource        ../../Keywords/API/report.robot

Suite Setup     Create Session     automationtesting    ${base_url}

*** Test Cases ***

Get report+
    [Documentation]   Gets resource by report number. This Test Case is positive.
    ${response}=                      Report number:            1
    log to console                    ${response.text}
    should be equal as integers       ${response.status_code}   200