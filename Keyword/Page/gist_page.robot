*** Keywords ***
Confirm Have Gist Tittle
    Wait Until Page Contains Element            css=.gist-detail-intro          timeout=${FAST_TIMEOUT}

Confirm Login And Singnup Element
    wait until page contains element            css=.Header-item.f4.mr-0        timeout=${FAST_TIMEOUT}

Confirm Have Login Button
    Wait Until Page Contains Element            css=.HeaderMenu-link            timeout=${FAST_TIMEOUT}

Click Sign-in Button
    Confirm Have Login Button
    Click Element                               css=.mr-3