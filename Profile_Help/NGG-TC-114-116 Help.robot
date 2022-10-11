*** Settings ***
Library   AppiumLibrary
Resource    Resources/Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications

*** Test Cases ***
Test Profile
       [Tags]    Automation
       Open App
       Page Home E-hub
#  NGG-TC-116
    Home Help
#   NGG-TC-115
    Video Player Help
#  NGG-TC-114
    Filters Validation Help















