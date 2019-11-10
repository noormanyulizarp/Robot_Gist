*** Settings ***
Resource          ../resource.robot
Test Teardown     Close All Browsers

*** Test Case ***
Test Create Public Gist Without Login Yet
    Open Browser                                https://gist.github.com/
    Make Sure Gist Was Loded Well
    Make Sure User Has Not Login Yet
    Login With Eligible User





