*** Settings ***
Documentation    Test Case for SignUp Functionality
Library    SeleniumLibrary
Resource    SignUpKeyword.resource

*** Test Cases ***
Launch the Sephora URL
    Step1: Go to the home page
    Step10:Close Browser

Login with EmailAddress
    Step1: Go to the home page
    Step1a: Change Language
    Step2: Click Signup button
    Step2_a: Enter EmailAddress
    Step10:Close Browser

Login with Facebook
    Step1: Go to the home page
    Step1a: Change Language
    Step2: Click Signup button
    Step2_b: Click Facebook
    Step10:Close Browser

Login with Google
    Step1: Go to the home page
    Step1a: Change Language
    Step2: Click Signup button
    Step2_c: Click Google
    Step10:Close Browser
  
Login with Apple
    Step1: Go to the home page
    Step1a: Change Language
    Step2: Click Signup button
    Step2_d: Click Apple
    Step10:Close Browser




       