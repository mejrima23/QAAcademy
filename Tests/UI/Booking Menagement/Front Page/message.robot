*** Settings ***

Resource                ../../../../Keywords/UI/Booking Menagement/Front Page/message.robot
Resource                ../../../../Keywords/UI/login.robot
Resource                ../../../../Keywords/UI/base.robot

Force Tags              Message

Suite Setup             Open Browser as Admin
Suite Teardown          close browser

*** Test Cases ***

Verify sending a message
    [Tags]              Message
    [Documentation]     Contact the owner
    [Setup]     run keywords    Login:    ${USERNAME}     ${PASSWORD}
    ...         AND             Navigate to Front Page
    Send a message:    Ahmed    ahmed123@gmail.com    123456756789    This is subject    This is a message for owner.
    element should be visible   ${VALIDATION_MSG}