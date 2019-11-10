*** Keywords ***
Login With Eligible User
    [ARGUMENTS]                             ${GITHUBACCOUNT}
    Make Sure Gist Was Loded Well
    Click Sign-in Button

Insert Username And Password
    [ARGUMENTS]                             ${GITHUBACCOUNT}
    Make Sure Username Input Was Loaded
    Insert Data On Selected Element         ${GITHUBACCOUNT.USERNAME}         name=username
    Make Sure Password Input Was Loaded
    Insert Data On Selected Element         ${GITHUBACCOUNT.PASSWORD}         name=password
    Make Sure Login Was Success             ${GITHUBACCOUNT.USERNAME}

