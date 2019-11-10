*** Settings ***
Library     SeleniumLibrary    ${DEFAULT_TIMEOUT}
Library     XvfbRobot
Library     Collections
Library     String
Library     DebugLibrary

Resource    Keyword/importer.robot

*** Variables ***
${FAST_TIMEOUT}       2
${MEDIUM_TIMEOUT}     3
${DEFAULT_TIMEOUT}    5

${GITHUBACCOUNT}          USERNAME=yourusername
...                       PASSWORD=yourpassword

*** Keywords ***
Open Browser With Specific URL
    [ARGUMENTS]           ${URL}
    Close All Browsers
    SeleniumLibrary.Open Browser         url=${URL}    browser=Chrome      alias=GISTBrowser
    Set Selenium Speed    0.5

Insert Data On Selected Element
    [ARGUMENTS]                          ${ELEMENT}      ${DATA}
    Input Text                           ${ELEMENT}      ${DATA}