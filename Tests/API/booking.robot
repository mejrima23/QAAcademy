*** Settings ***

Resource        ../../Keywords/API/booking.robot

Suite Setup     Create Session     automationtesting    ${base_url}

*** Test Cases ***

Get booking+
    [Documentation]   Gets resource by booking number. This Test Case is positive.
    ${response}=                      Booking number:           1
    log to console                    ${response.text}
    should be equal as integers       ${response.status_code}   200


