*** Keywords ***
Make Sure Username Input Was Loaded
    Wait Until Page Contains Element             name=username       timeout=${FAST_TIMEOUT}

Make Sure Password Input Was Loaded
    Wait Until Page Contains Element             name=password       timeout=${FAST_TIMEOUT}

Make Sure Login Was Succes
    Wait Until Page Contains Element             css=.avatar         timeout=${FAST_TIMEOUT}
    Make Sure Username Was Correct

Make Sure Username Was Correct
    [Arguments]                                 ${USERNAME}
    ${USERNAME_LOGGED}                          Get Text             css=.css-truncate-target
    should be equal                             ${USERNAME}          ${USERNAME_LOGGED}

Click Login Button
    Wait Until Page Contains Element            name=login           timeout=${FAST_TIMEOUT}


