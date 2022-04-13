#!/bin/bash

set -e

BuildToolPath=${SIMCUBE_DOTNET_TOOL_PATH:-/home/prom3theu5/.dotnet/tools}

echo "SimCube.BuildTool"
if bash -c "${BuildToolPath}/SimCube.BuildTool -t DotNet"; then
    # no op
    echo "Successfully Completed"
else
    exit_code=$?
    echo "ERROR: running '${BuildToolPath}/SimCube.BuildTool', exited with $exit_code"
    exit $exit_code
fi
