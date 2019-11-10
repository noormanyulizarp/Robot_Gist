*** Keywords ***
Create Gist
    Make Sure User Can Create Gist

Edit And Save Existing Gist With Add-file
    [Arguments]                             ${PUBLIC}
    Make Sure User Can Create Gist
    Make Sure User Can Add File
    Add File
    run keyword if    ${PUBLIC}="ispublic"       Save For Public
    ...               ELSE                       Save For Secret

Make Sure User Can Create Gist
    Verify Link Create Gist
