*** Keywords ***
Make Sure User Can Add File
    Wait Until Page Contains Element        css=.add                             timeout= timeout=${FAST_TIMEOUT}

Add File
    Wait Until Page Contains Element        css=.add                             timeout= timeout=${FAST_TIMEOUT}
    Click Element                           css=.add

Select Edit Button
    Wait Until Page Contains Element        css=.edit                            timeout= timeout=${FAST_TIMEOUT}
    Click Element                           css=.edit

Save For Public
    Wait Until Page Contains Element        css=.button.gist[public]             timeout= timeout=${FAST_TIMEOUT}

Save For Secret
    Wait Until Page Contains Element        css=.button.gist[secret]             timeout= timeout=${FAST_TIMEOUT}