*** Settings ***

Resource                      ../../Keywords/UI/login.robot
Force Tags                    login


*** Test Cases ***

Login as Admin
    [Tags]                    Default login
    [Documentation]           Verifies that admin can be login.
    Open Browser as Admin
    Input username:           ${USERNAME}
    Input password:           ${PASSWORD}
    Click login button
    element should be visible       ${LOGOUT}
    [Teardown]         close browser

