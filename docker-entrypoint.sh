#!/bin/bash
set -e

if [[ "$FFNODE" == 'true' || "$FFNODE" == '1' || "$1" = '--node' ]]; then
    printf "Launching node\n"
    cd /app/Node
    exec dotnet FileFlows.Node.dll

else
    printf "Launching server\n"
    cd /app/Server
    exec dotnet FileFlows.Server.dll --no-gui true

fi
