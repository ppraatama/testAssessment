*** Settings ***
Resource                        ../../Frameworks/Routers.robot

Test Timeout                    ${DEFAULT_TEST_TIMEOUT}
Test Setup                      CommonKeywords.Start Testing        ${URL}
Test Teardown                   CommonKeywords.End Testing

*** Variables ***
${URL}                          ${HOST}
${BROWSER1}                     ${BROWSER}

*** Test Cases ***
Should be able to login
    [Documentation]  Should be able to login and go to homepage
    [Tags]  Positive

    Loginpage.user input username
    Loginpage.user input password
    Loginpage.user click button login
    Homepage.Verify user successfully login

Should be able to logout
    [Documentation]  User should be able to logout and direct to login page
    [Tags]    Positive

    Loginpage.user input username
    Loginpage.user input password
    Loginpage.user click button login
    Homepage.Verify user successfully login
    Homepage.User logout
    Loginpage.Verify User Succesfully Logout

Should be able to edit personal details
    [Documentation]  User should be able to edit personal details
    [Tags]    Positive

    Loginpage.user input username
    Loginpage.user input password
    Loginpage.user click button login
    Homepage.Verify user successfully login
    Homepage.User click My Info Menu
    Personaldetail.User Update Personal Details