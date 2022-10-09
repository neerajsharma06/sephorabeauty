*** Settings ***
Documentation    Variable and Keywords for SignUp functionality

*** Variables ***
${URL}    https://www.sephora.co.th/
${BROWSER}    chrome
${ClosePopup}    xpath://*[@class="dy-lb-close"]
${LanguageButton}    xpath://*[@id="__layout"]/div/div[2]/div/div[2]/nav/div/div/div[2]/div[3]/div[1]/div/span
${LanguageButtonEn}    xpath://*[@id="__layout"]/div/div[2]/div/div[2]/nav/div/div/div[2]/div[3]/div[2]/div/a[2]/span[1]
${SigninButton}    xpath://*[@id="dy-header-banner"]/div/div/div[3]/a[1]/button
${SignupButton}    xpath://*[@id="dy-header-banner"]/div/div/div[3]/a[2]/button
${EmailAddressObject}    xpath://*[@id="authentication"]/div/div/div/div/div[3]/div/input
${ContinueWithEmailObject}    xpath://*[@id="ga-validate-email"]
${ContinueWithFacebookObject}    xpath://*[@id="authentication"]/div/div/div/div/div[5]/button[1]
${ContinueWithGoogleObject}    xpath://*[@id="authentication"]/div/div/div/div/div[5]/button[2]
${ContinueWithAppleObject}    xpath://*[@id="authentication"]/div/div/div/div/div[5]/button[3]
${SignupConfirmationObject}    xpath:////*[@id="authentication"]/div/div/div/div/div[2]/h3
${CloseConfirmationObject}    xpath://*[@id="authentication"]/div/div/button
${EmailText}    tester1@zgmail.com


*** Keywords ***
Step1: Go to the home page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2
    Click Element    ${ClosePopup}
    Sleep    2

Step1a: Change Language
    Click Element    ${LanguageButton}
    Click Element    ${LanguageButtonEn}

Step2: Click Signup button
    Click Element    ${SignupButton}

Step2_a: Enter EmailAddress
    Input Text    ${EmailAddressObject}    ${EmailText}
    Click Element    ${ContinueWithEmailObject}
    Click Element    ${CloseConfirmationObject}
    Sleep    2

Step2_b: Click Facebook
    Click Element    ${ContinueWithFacebookObject}
    Sleep    2

Step2_c: Click Google
   Click Element    ${ContinueWithGoogleObject}
    Sleep    2

Step2_d: Click Apple
    Click Element    ${ContinueWithAppleObject}
    Sleep    2

Step10:Close Browser
    Close Browser