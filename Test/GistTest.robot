*** Settings ***
Resource          ../../resource.robot
Test Teardown     Close All Browsers

*** Keywords ***
Create Public Gist Without Login Yet
    Open Browser                    https://gist.github.com/
    Maake Sure Gist Was Laded Well




