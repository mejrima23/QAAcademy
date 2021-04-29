*** Settings ***
Library                String
Resource               ../../../../Keywords/UI/Booking Menagement/Rooms/room.robot
Resource               ../../../../Keywords/UI/login.robot
Resource               ../../../../Keywords/UI/base.robot
Force Tags             NewRoom

Suite Setup            Open Browser as Admin


*** Variables ***
@{TYPE_LIST}           Single   Twin  Double   Family   Suite
@{ACCESS_LIST}         true   false

*** Test Cases ***

Creating new room - all fields
    [Tags]              NewRoom
    [Documentation]     Adding new room
    Login:              ${USERNAME}     ${PASSWORD}
    ${NUMBER}           generate random string    3    [NUMBERS]
    Room ID:            ${NUMBER}
    ${TYPE}             evaluate   random.choice(@{TYPE_LIST})
    Room Type:          ${TYPE}
    ${ACCESSIBLE}       evaluate   random.choice(@{ACCESS_LIST})
    Room Accessible:    ${ACCESSIBLE}
    ${PRICE}            generate random string    3    [NUMBERS]
    Room Price:         ${PRICE}
    Room Details
    Create Room
    page should contain    ${NUMBER}
    [Teardown]          close browser