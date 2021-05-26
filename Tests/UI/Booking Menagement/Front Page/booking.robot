*** Settings ***

Resource                ../../../../Keywords/UI/Booking Menagement/Front Page/message.robot
Resource                ../../../../Keywords/UI/Booking Menagement/Front Page/booking.robot
Resource                ../../../../Keywords/UI/login.robot
Resource                ../../../../Keywords/UI/base.robot

Force Tags              Booking

Suite Setup             Open Browser as Admin


*** Variables ***


*** Test Cases ***

Verify booking the room
    [Tags]              Booking
    [Documentation]     Booking the room
    [Setup]     run keywords        Login:    ${USERNAME}     ${PASSWORD}
    ...         AND                 Navigate to Front Page
    Open booking
    Select date:                    08  09  10  11  12
    Input personal information:     Ahmed  Bosnjak   ahmedb@gmail.test   123456789034
    element should be visible       ${BOOKING_MSG}
    [Teardown]                      close browser