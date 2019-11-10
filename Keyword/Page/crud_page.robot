*** Keywords ***
Make Sure User Can Create Gist


Make Sure User Can Add File
    Should Content Add File

Should Content Add File
    page should contain             css=                            timeout= timeout=${FAST_TIMEOUT}

Add File
    Click Element                   css=