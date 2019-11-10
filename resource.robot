*** Settings ***
Library     SeleniumLibrary    ${DEFAULT_TIMEOUT}
Library     XvfbRobot
Library     Collections
Library     String
Library     DebugLibrary

Resource    Keyword/importer.robot

*** Variables ***
${FAST_TIMEOUT}       3
${MEDIUM_TIMEOUT}     5

${GITHUBACCOUNT}          USERNAME=yourusername
...                       PASSWORD=yourpassword

*** Keywords ***
Open Browser
    [ARGUMENTS]           ${URL}
    Open Browser          url=${URL}    browser=Chrome      alias=GIST_Browser      run_on_failure=None
    Set Selenium Speed    0.5

Insert Data On Selected Element
    [ARGUMENTS]                             ${ELEMENT}      ${DATA}
    Input Text                              ${ELEMENT}      ${DATA}