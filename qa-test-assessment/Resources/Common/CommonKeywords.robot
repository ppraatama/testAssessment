*** Settings ***
Resource                ../../Frameworks/Routers.robot

*** Variables ***
${URL_BLANK}            about:blank

*** Keywords ***
Start Testing
    [Arguments]     ${URL}
    Open Browser                ${URL}  ${BROWSER}
    Set Selenium Timeout        ${DEFAULT_TIMEOUT}
    Set Selenium Speed	        ${DELAY}

End Testing
    Close All Browsers

Open Cinema
    [Arguments]     ${URL}
    ${BROWSER}      Convert To Lower Case    ${BROWSER}
    Open Normal Browser                      ${URL}