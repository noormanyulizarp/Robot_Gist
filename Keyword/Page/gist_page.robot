*** Keywords ***
Confirm Have Gist Tittle
    Wait Until Page Contains Element            css=.gist-detail-intro    timeout=${FAST_TIMEOUT}

Confirm Have Login Button
    Wait Until Page Contains Element            css=.HeaderMenu-link      timeout=${FAST_TIMEOUT}