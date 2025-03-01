#!/bin/bash

# a, b, ...
NAME=$1

swift build -Xswiftc -O -Xlinker -lm -c release

# if exit code is not 0, print error message
if [ $? -ne 0 ]; then
    echo "Error building" >&2
    exit 1
fi

echo "Starting ${NAME}"

./.build/release/${NAME}

# if exit code is not 0, print error message
if [ $? -ne 0 ]; then
    echo "Exit code is not zero" >&2
    exit 1
fi
