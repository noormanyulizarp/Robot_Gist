*** Settings ***
Library     SeleniumLibrary    ${DEFAULT_TIMEOUT}
Library     XvfbRobot
Library     Collections
Library     String
Library     DebugLibrary
Resource    Keywords/importer.robot
Resource    API/APIHelper.robot

*** Variables ***
${FAST_TIMEOUT}       3
${MEDIUM_TIMEOUT}     5

*** Keywords ***
Open Browser
    [ARGUMENTS]           ${URL}
    Close All Browsers
    Open Browser          url=${URL}    browser=Chrome      alias=GIST_Browser      run_on_failure=None
    Set Selenium Speed    0.5