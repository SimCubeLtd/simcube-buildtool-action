#!/bin/bash

set -e

BuildToolPath=${SIMCUBE_DOTNET_TOOL_PATH:-/home/prom3theu5/.dotnet/tools}
zero=0;

echo "SimCube.BuildTool"

if bash -c "${BuildToolPath}/SimCube.BuildTool -t DotNet"; then
    # no op
    exit_code=$?
    if [[ $exit_code -eq $zero ]]; then
        echo "Successfully Completed"
    else
        echo "ERROR: running '${BuildToolPath}/SimCube.BuildTool', exited with $exit_code"
        exit $exit_code       
    fi
else
    exit_code=$?
    echo "ERROR: running '${BuildToolPath}/SimCube.BuildTool', exited with $exit_code"
    exit $exit_code
fi
