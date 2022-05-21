#!/bin/bash

set -e

zero=0;
toolbinary="simcubebuildtool"

echo "SimCube.BuildTool"

if bash -c "${SIMCUBE_DOTNET_TOOL_PATH}/${toolbinary} -t DotNet"; then
    # no op
    exit_code=$?
    if [[ $exit_code -eq $zero ]]; then
        echo "Successfully Completed"
    else
        echo "ERROR: running '${SIMCUBE_DOTNET_TOOL_PATH}/${toolbinary}', exited with $exit_code"
        exit $exit_code       
    fi
else
    exit_code=$?
    echo "ERROR: running '${SIMCUBE_DOTNET_TOOL_PATH}/${toolbinary}', exited with $exit_code"
    exit $exit_code
fi
