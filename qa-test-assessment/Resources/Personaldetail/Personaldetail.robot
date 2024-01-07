*** Settings ***
Resource    ../../Frameworks/Routers.robot

*** Variables ***
${personal_details}                     xpath=//div[@class='orangehrm-tabs-wrapper']//a[@href='/web/index.php/pim/viewPersonalDetails/empNumber/7']
${contact_details}                      xpath=//div[@class='orangehrm-tabs-wrapper']//a[@href='/web/index.php/pim/contactDetails/empNumber/7']
${first_name}                           xpath=//input[@class='oxd-input oxd-input--active orangehrm-firstname']
${first_name_focus}                     xpath=//input[@class='oxd-input oxd-input--focus orangehrm-firstname']
${clear_firstname}                      document.querySelector("input[name='firstName']").value = ""
${middle_name}                          xpath=//div[@class='oxd-input-group oxd-input-field-bottom-space']//input[@name='middleName']
${clear_middlename}                     document.querySelector("input[name='middleName']").value = ""
${last_name}                            xpath=//div[@class='oxd-input-group oxd-input-field-bottom-space']//input[@name='lastName']
${clear_lastname}                       document.querySelector("input[name='lastName']").value = ""
${nickname}                             xpath=//div[@id='app']/div[@class='oxd-layout']//div[@class='orangehrm-background-container']//div[@class='orangehrm-edit-employee-content']/div[@class='orangehrm-horizontal-padding orangehrm-vertical-padding']/form[@class='oxd-form']/div[1]/div[2]/div[@class='oxd-grid-item oxd-grid-item--gutters']/div//input
${employee_id}                          xpath=//div[@id='app']/div[@class='oxd-layout']//div[@class='orangehrm-background-container']//div[@class='orangehrm-edit-employee-content']/div[@class='orangehrm-horizontal-padding orangehrm-vertical-padding']/form[@class='oxd-form']/div[2]/div[1]/div[1]/div//input
${other_id}                             xpath=//div[@id='app']/div[@class='oxd-layout']//div[@class='orangehrm-background-container']//div[@class='orangehrm-edit-employee-content']/div[@class='orangehrm-horizontal-padding orangehrm-vertical-padding']/form[@class='oxd-form']/div[2]/div[1]/div[2]/div//input
${personal_detail_save_button}          xpath=//div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']//div[@class='orangehrm-background-container']//div[@class='orangehrm-edit-employee-content']/div[@class='orangehrm-horizontal-padding orangehrm-vertical-padding']/form[@class='oxd-form']/div[@class='oxd-form-actions']/button[@type='submit']
${custom_field_save_button}             xpath=//div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']/div[@class='orangehrm-background-container']//div[@class='orangehrm-custom-fields']/div[@class='orangehrm-card-container']/form[@class='oxd-form']//button[@type='submit']
${custom_field_dropdown}                xpath=//div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']/div[@class='orangehrm-background-container']/div[@class='orangehrm-card-container']/div[@class='orangehrm-edit-employee']/div[@class='orangehrm-edit-employee-content']//div[@class='orangehrm-card-container']/form[@class='oxd-form']//div[@class='oxd-select-wrapper']/div
${notication_success_edit}              xpath=//div[@id='oxd-toaster_1']/div[@class='oxd-toast oxd-toast--success oxd-toast-container--toast']


*** Keywords ***
User Update Personal Details
    wait until element is visible       ${personal_details}
    click element                       ${personal_details}
    wait until element is visible       ${first_name}
    click element                       ${first_name}
    execute javascript                  ${clear_firstname}
    input text                          ${first_name_focus}   Putra
    wait until element is visible       ${middle_name}
    click element                       ${middle_name}
    execute javascript                  ${clear_middlename}
    input text                          ${middle_name}  Test
    wait until element is visible       ${last_name}
    click element                       ${last_name}
    execute javascript                  ${clear_lastname}
    input text                          ${last_name}    Pratama
    wait until element is visible       ${personal_detail_save_button}
    click element                       ${personal_detail_save_button}
    wait until element is visible       ${notication_success_edit}
    element should be visible           ${notication_success_edit}
    wait until element is visible       ${first_name}
