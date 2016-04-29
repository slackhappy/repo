#!/bin/bash
set -x
# http://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
mvn -DaltDeploymentRepository="id::default::file://$SCRIPT_PATH" deploy "$@"
