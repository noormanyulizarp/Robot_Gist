*** Keywords ***
Make Sure Have List
    Wait Until Page Contains Element        xpath=//@li[@css="list"]       timeout= timeout=${FAST_TIMEOUT}
    ${GIST_TITTLE}                          Get Text             xpath=//@li[@css="list"][0]