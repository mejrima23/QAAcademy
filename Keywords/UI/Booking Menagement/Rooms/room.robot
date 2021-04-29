*** Settings ***

Library               ExtendedSelenium2Library


*** Variables ***
${IN_NUMBER}          id=roomNumber
${IN_TYPE}            id=type
${IN_ACCESS}          id=accessible
${IN_PRICE}           id=roomPrice
${CBX_WIFI}           id=wifiCheckbox
${CBX_REFRESH}        id=refreshCheckbox
${CBX_TV}             id=tvCheckbox
${CBX_SAFE}           id=safeCheckbox
${CBX_RADIO}          id=radioCheckbox
${CBX_VIEWS}          id=viewsCheckbox
${CREATE_BTN}         id=createRoom


*** Keywords ***

Room ID:
    [Arguments]             ${NUMBER}
    [Documentation]         Add room number
    input text              ${IN_NUMBER}    ${NUMBER}

Room Type:
    [Arguments]             ${TYPE}
    [Documentation]         Choose room type
    click element           ${IN_TYPE}
    click element           //*[@id="type"]//option[text()="${TYPE}"]

Room Accessible:
    [Arguments]             ${ACCESSIBLE}
    [Documentation]         Choose room accessibility
    click element           ${IN_ACCESS}
    click element           //*[@id="accessible"]//option[text()="${ACCESSIBLE}"]

Room Price:
    [Arguments]             ${PRICE}
    [Documentation]         Add room price
    input text              ${IN_PRICE}    ${PRICE}

Room Details
    [Documentation]         Add room details
    select checkbox         ${CBX_WIFI}
    select checkbox         ${CBX_REFRESH}
    select checkbox         ${CBX_TV}
    select checkbox         ${CBX_SAFE}
    select checkbox         ${CBX_RADIO}
    select checkbox         ${CBX_VIEWS}

Create Room
    [Documentation]         Click on create button
    click element           ${CREATE_BTN}

