*** Keywords ***
Make Sure User Can Add File
    Wait Until Page Contains Element        css=                 timeout= timeout=${FAST_TIMEOUT}

Add File
    Wait Until Page Contains Element        css=                 timeout= timeout=${FAST_TIMEOUT}
    Click Element                           css=

Select Edit Button
    Wait Until Page Contains Element        css=                 timeout= timeout=${FAST_TIMEOUT}
    Click Element                           css=