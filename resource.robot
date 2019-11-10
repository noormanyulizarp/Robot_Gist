*** Settings ***
Library     SeleniumLibrary    ${DEFAULT_TIMEOUT}
Library     XvfbRobot
Library     Collections
Library     String
Library     DebugLibrary

Resource    Keyword/importer.robot
Resource    variable.robot

*** Variables ***
${FAST_TIMEOUT}       2
${MEDIUM_TIMEOUT}     3
${DEFAULT_TIMEOUT}    5

${GITHUBACCOUNTS}     USERNAME=yourusername
...                   PASSWORD=yourpassword

*** Keywords ***
Open Browser With Specific URL
    [ARGUMENTS]                             ${URL}
    Close All Browsers
    SeleniumLibrary.Open Browser            url=${URL}    browser=Chrome      alias=GISTBrowser
    Set Selenium Speed      0.5

Login With Eligible User
    [ARGUMENTS]                             ${GITHUBACCOUNT}
    Open Browser With Specific URL          https://gist.github.com/
    Make Sure Gist Was Loded Well
    Make Sure User Has Not Login Yet
    debug
    Login With Eligible User                ${GITHUBACCOUNT}

Insert Data On Selected Element
    [ARGUMENTS]                             ${ELEMENT}      ${DATA}
    Input Text                              ${ELEMENT}      ${DATA}