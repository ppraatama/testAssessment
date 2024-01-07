*** Settings ***



*** Variables ***
${header_user}                          xpath=//div[@class='oxd-topbar-header-userarea']
${header_user_dropdown}                 xpath=//div[@id='app']//header[@class='oxd-topbar']//div[@class='oxd-topbar-header-userarea']/ul/li[@class='oxd-userdropdown']//p[@class='oxd-userdropdown-name']
${header_user_dropdown_menu}            xpath=//div[@id='app']//header[@class='oxd-topbar']//div[@class='oxd-topbar-header-userarea']/ul/li/ul[@role='menu']
${header_user_logout}                   xpath=//div[@id='app']//header[@class='oxd-topbar']//div[@class='oxd-topbar-header-userarea']/ul/li/ul[@role='menu']/li[4]/a[@role='menuitem']
${url_homepage}                         https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
${myinfo_menu}                          xpath=//ul[@class='oxd-main-menu']//a[@href='/web/index.php/pim/viewMyDetails']

*** Keywords ***
Verify User Successfully Login
    wait until element is visible       ${header_user}
    element should be visible           ${header_user}
    location should be                  ${url_homepage}

User Logout
    wait until element is visible       ${header_user}
    click element                       ${header_user_dropdown}
    wait until element is visible       ${header_user_dropdown_menu}
    click element                       ${header_user_logout}

User click My Info Menu
    click element                       ${myinfo_menu}