*** Settings ***
Resource          ../resource.robot

*** Test Case ***
Test Create Public Gist Without Login Yet
    Open Browser With Specific URL              https://gist.github.com/
    Make Sure Gist Was Loded Well
    debug
    Make Sure User Has Not Login Yet
    Login With Eligible User                    ${GITHUBACCOUNT}





