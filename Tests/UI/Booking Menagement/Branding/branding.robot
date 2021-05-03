*** Settings ***

Resource                ../../../../Keywords/UI/Booking Menagement/Branding/branding.robot
Resource                ../../../../Keywords/UI/login.robot
Resource                ../../../../Keywords/UI/base.robot

Force Tags              Branding

Suite Setup            Open Browser as Admin


*** Variables ***


*** Test Cases ***

Changing B&B information
    [Tags]              Branding
    [Documentation]     Change details about B&B
    [Setup]     run keywords    Login:    ${USERNAME}     ${PASSWORD}
    ...         AND             Navigate to Branding
    Input B&B details:          Name    ${LOGO}    This is description
    Input Map details:          35.2333    23.5555
    Input contact details:      Mejrima    Trg Slobode   123456   test@gmail.com
    Click Submit Button
    element should be visible   ${UPDATE}
    [Teardown]    close browser