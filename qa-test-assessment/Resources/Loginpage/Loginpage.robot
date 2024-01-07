*** Settings ***
Resource            ../../Frameworks/Routers.robot

*** Variables ***
${login_form}                                       xpath=//div[@class='orangehrm-login-form']
${username_field}                                   xpath=//div[@id='app']/div[@class='orangehrm-login-layout']//div[@class='orangehrm-login-form']/form[@action='/web/index.php/auth/validate']/div[1]/div//input[@name='username']
${password_field}                                   xpath=//div[@id='app']/div[@class='orangehrm-login-layout']//div[@class='orangehrm-login-form']/form[@action='/web/index.php/auth/validate']/div[2]/div//input[@name='password']
${login_button}                                     xpath=//div[@class='oxd-form-actions orangehrm-login-action']/button[@type='submit']
${error_message}                                    xpath=//div[@class='orangehrm-login-error']/div[@class='oxd-alert oxd-alert--error']
${login_logo}                                       xpath=//div[@class='orangehrm-login-logo']
${url_login_page}                                   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login


*** Keywords ***
User Input username
    wait until element is visible                   ${login_form}
    click element                                   ${username_field}
    input text                                      ${username_field}   Admin

User Input Password
    wait until element is visible                   ${login_form}
    click element                                   ${password_field}
    input password                                  ${password_field}   admin123

User Click Button Login
    wait until element is visible                   ${login_form}
    click element                                   ${login_button}

Verify User Succesfully Logout
    wait until element is visible                   ${login_form}
    element should be visible                       ${login_form}
    element should be visible                       ${login_logo}
    location should be                              ${url_login_page}