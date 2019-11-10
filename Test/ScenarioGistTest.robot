*** Settings ***
Resource          ../resource.robot

*** Test Case ***
Test Create Public Gist Without Login Yet
    Open Browser With Specific URL              https://gist.github.com/
    Make Sure Gist Was Loded Well
    Make Sure User Has Not Login Yet
    Login With Eligible User                    ${GITHUBACCOUNT}
    Create Gist                                 ispublic

Test Edit PublicExisting Gist
    Open Browser With Specific URL              https://gist.github.com/
    Make Sure Gist Was Loded Well
    Make Sure User Has Not Login Yet
    Login With Eligible User                    ${GITHUBACCOUNT}
    Edit And Save Existing Gist                 ispublic
    Make Sure Edit Was Success

Test Create Secret Gist Without Login Yet
    Open Browser With Specific URL              https://gist.github.com/
    Make Sure Gist Was Loded Well
    Make Sure User Has Not Login Yet
    Login With Eligible User                    ${GITHUBACCOUNT}
    Create Gist                                 issecret

Test Edit Secret Existing Gist
    Open Browser With Specific URL              https://gist.github.com/
    Make Sure Gist Was Loded Well
    Make Sure User Has Not Login Yet
    Login With Eligible User                    ${GITHUBACCOUNT}
    Edit And Save Existing Gist                 issecret
    Make Sure Edit Was Success

Test Delete Existing Gist
    Open Browser With Specific URL              https://gist.github.com/
    Make Sure Gist Was Loded Well
    Make Sure User Has Not Login Yet
    Login With Eligible User                    ${GITHUBACCOUNT}
    Make Sure User Has Gist
    Delete Existing Gist
    Make Sure Delete Was Success
    Make Sure User Don’t Have Any Gists






