*** Settings ***

Library                 ExtendedSelenium2Library


*** Variables ***
${LNK_FRONTPAGE}        id=frontPageLink
${IN_NAME}              id=name
${IN_EMAIL}             id=email
${IN_PHONE}             id=phone
${IN_SUBJECT}           id=subject
${IN_MESSAGE}           id=description
${SUBMIT_BTN}           id=submitContact
${VALIDATION_MSG}       //*[@class="col-sm-5"]


*** Keywords ***

Navigate to Front Page
    [Documentation]     Goes to front page
    click element       ${LNK_FRONTPAGE}

Send a message:
    [Documentation]     Fill contact informations and message.
    [Arguments]         ${NAME}   ${EMAIL}   ${PHONE}   ${SUBJECT}   ${MESSAGE}
    input text          ${IN_NAME}       ${NAME}
    input text          ${IN_EMAIL}      ${EMAIL}
    input text          ${IN_PHONE}      ${PHONE}
    input text          ${IN_SUBJECT}    ${SUBJECT}
    input text          ${IN_MESSAGE}    ${MESSAGE}
    click element       ${SUBMIT_BTN}