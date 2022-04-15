#!/bin/bash

set -e

zero=0;

echo "SimCube.BuildTool"

if bash -c "${SIMCUBE_DOTNET_TOOL_PATH}/SimCube.BuildTool -t DotNet --packableProjects=\"$1\" --containerConfig=\"$2\""; then
    # no op
    exit_code=$?
    if [[ $exit_code -eq $zero ]]; then
        echo "Successfully Completed"
    else
        echo "ERROR: running '${SIMCUBE_DOTNET_TOOL_PATH}/SimCube.BuildTool', exited with $exit_code"
        exit $exit_code       
    fi
else
    exit_code=$?
    echo "ERROR: running '${SIMCUBE_DOTNET_TOOL_PATH}/SimCube.BuildTool', exited with $exit_code"
    exit $exit_code
fi
