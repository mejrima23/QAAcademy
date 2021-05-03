*** Settings ***

Library               ExtendedSelenium2Library


*** Variables ***
${LNK_BRANDING}       id=brandingLink
${IN_NAME}            id=name
${IN_LOGO}            id=logoUrl
${IN_DESCRIPTION}     id=description
${IN_LATITUDE}        id=latitude
${IN_LONGITUDE}       id=longitude
${IN_CONT_NAME}       id=contactName
${IN_ADDRESS}         id=contactAddress
${IN_PHONE}           id=contactPhone
${IN_EMAIL}           id=contactEmail
${SUBMIT_BTN}         id=updateBranding
${UPDATE}             css=.form-row.text-center
${UPDATE_MSG}         Branding updated!
${LOGO}               https://www.pino-hotel.com/template/images/pino-logo.png


*** Keywords ***

Navigate to Branding
    [Documentation]         Goes to branding
    click element           ${LNK_BRANDING}

Input B&B details:
    [Arguments]             ${NAME}    ${LOGO}   ${DESCRIPTION}
    [Documentation]         Inputs B&B details
    clear element text      ${IN_NAME}
    input text              ${IN_NAME}           ${NAME}
    clear element text      ${IN_LOGO}
    input text              ${IN_LOGO}           ${LOGO}
    clear element text      ${IN_DESCRIPTION}
    input text              ${IN_DESCRIPTION}    ${DESCRIPTION}

Input Map details:
    [Arguments]             ${LATITUDE}   ${LONGITUDE}
    [Documentation]         Inputs map details
    clear element text      ${IN_LATITUDE}
    input text              ${IN_LATITUDE}    ${LATITUDE}
    clear element text      ${IN_LONGITUDE}
    input text              ${IN_LONGITUDE}   ${LONGITUDE}

Input contact details:
    [Arguments]             ${CONT_NAME}    ${ADDRESS}   ${PHONE}    ${EMAIL}
    [Documentation]         Inputs contact details
    clear element text      ${IN_CONT_NAME}
    input text              ${IN_CONT_NAME}    ${CONT_NAME}
    clear element text      ${IN_ADDRESS}
    input text              ${IN_ADDRESS}      ${ADDRESS}
    clear element text      ${IN_PHONE}
    input text              ${IN_PHONE}        ${PHONE}
    clear element text      ${IN_EMAIL}
    input text              ${IN_EMAIL}        ${EMAIL}

Click Submit Button
    [Documentation]         Clicks on Submit button
    click element           ${SUBMIT_BTN}
