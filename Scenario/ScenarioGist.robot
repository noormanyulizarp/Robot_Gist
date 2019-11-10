*** Settings ***
Resource          ../resource.robot

*** Test Case ***
Test Create Public Gist Without Login Yet
    Login With Eligible User                        ${GITHUBACCOUNT}
    Create Gist                                     ispublic

Test Create Public Gist Without Login Yet
    Login With Eligible User                        ${GITHUBACCOUNT}
    Make Sure User Can See Gist List

Test Edit PublicExisting Gist
    Login With Eligible User                        ${GITHUBACCOUNT}
    Edit And Save Existing Gist                     ispublic
    Make Sure Edit Was Success

Test Create Secret Gist Without Login Yet
    Login With Eligible User                        ${GITHUBACCOUNT}
    Create Gist                                     issecret

Test Edit Secret Existing GistClick
    Login With Eligible User                        ${GITHUBACCOUNT}
    Edit And Save Existing Gist                     issecret
    Make Sure Edit Was Success

Test Delete Existing Gist
    Login With Eligible User                        ${GITHUBACCOUNT}
    Make Sure User Has Gist
    Delete Existing Gist
    Make Sure Delete Was Success
    Make Sure User Don’t Have Any Gists

Test Create Public Gist With Add File
    Login With Eligible User                        ${GITHUBACCOUNT}
    Make Sure User Can See Gist List
    Edit And Save Existing Gist With Add-file       ispublic

Test Create Secret Gist With Add File
    Login With Eligible User                        ${GITHUBACCOUNT}
    Make Sure User Can See Gist List
    Edit And Save Existing Gist With Add-file       ispublic





