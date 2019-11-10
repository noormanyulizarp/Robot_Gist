*** Settings ***
Resource          ../resource.robot
Test Teardown     Close All Browsers

*** Keywords ***
Create Public Gist Without Login Yet
    Open Browser                                https://gist.github.com/
    Make Sure Gist Was Loded Well




