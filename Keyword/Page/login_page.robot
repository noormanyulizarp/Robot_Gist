*** Keywords ***
Make Sure Username Input Was Loaded
    wait until page contains element             name=username       timeout=${FAST_TIMEOUT}

Make Sure Password Input Was Loaded
    wait until page contains element             name=password       timeout=${FAST_TIMEOUT}

Make Sure Login Was Succes
    wait until page contains element             css=.avatar         timeout=${FAST_TIMEOUT}
    Make Sure Username Was Correct

Make Sure Username Was Correct
    ${USERNAME_LOGGED}                          Get Text             css=.css-truncate-target

