*** Settings ***
Resource          ../resource.robot

*** Test Case ***
Test Search Your Public Gist Without Logged User
    Make Sure User Has Not Login Yet
    Create Gist For Search                          loggut
    Search With Specific Gist                       AlphaOegaGistWasCreated      ${GITHUBACCOUNT.USERNAME}
    Verify Specific Gist Was Found

Test Search Your Public Gist With Logged User
    Make Sure User Has Not Login Yet
    Create Gist For Searh
    Search With Specific Gist                       AlphaOegaGistWasCreated      ${GITHUBACCOUNT.USERNAME}
    Verify Specific Gist Was Found