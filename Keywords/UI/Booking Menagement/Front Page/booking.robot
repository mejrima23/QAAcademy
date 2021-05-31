*** Settings ***

Library               ExtendedSelenium2Library


*** Variables ***
${LNK_FRONTPAGE}      id=frontPageLink
${BOOKING_BTN}        css=.btn.btn-outline-primary.float-right.openBooking
${IN_FIRSTNAME}       css=.form-control.room-firstname
${IN_LASTNAME}        css=.form-control.room-lastname
${IN_PHONE_BOOK}      //*[@class="form-control room-phone"]
${IN_EMAIL_BOOK}      //*[@class="form-control room-email"]
${BOOK_BTN}           //*[@class="btn btn-outline-primary float-right book-room"]
${NEXT_BTN}           //*[@class="rbc-btn-group"]//button[text()="Next"]
${BOOKING_MSG}        css=.col-sm-6.text-center



*** Keywords ***

Open booking
   [Documentation]     Choose the room for the booking and clicks on Book button.
   click element       ${BOOKING_BTN}


Select date:
   [Documentation]    Selecting date for the booking.
   [Arguments]        ${DATE1}   ${DATE2}  ${DATE3}   ${DATE4}   ${DATE5}
   click element      ${NEXT_BTN}
   mouse down         //*[@class="rbc-date-cell"]//a[text()="${DATE1}"]
   mouse over         //*[@class="rbc-date-cell"]//a[text()="${DATE2}"]
   mouse over         //*[@class="rbc-date-cell"]//a[text()="${DATE3}"]
   mouse over         //*[@class="rbc-date-cell"]//a[text()="${DATE4}"]
   mouse up           //*[@class="rbc-date-cell"]//a[text()="${DATE5}"]

Input personal information:
   [Documentation]    Guests informations.
   [Arguments]        ${FIRSTNAME}   ${LASTNAME}   ${EMAIL}   ${PHONE}
   input text         ${IN_FIRSTNAME}     ${FIRSTNAME}
   input text         ${IN_LASTNAME}      ${LASTNAME}
   input text         ${IN_EMAIL_BOOK}    ${EMAIL}
   input text         ${IN_PHONE_BOOK}    ${PHONE}
   click element      ${BOOK_BTN}