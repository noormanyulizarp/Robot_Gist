*** Keywords ***
Make Sure Username Input Was Loaded
    wait until page contains element             name=username       timeout=${FAST_TIMEOUT}

Make Sure Password Input Was Loaded
    wait until page contains element             name=password       timeout=${FAST_TIMEOUT}