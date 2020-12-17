#!/bin/bash

#file imports
source ./await-container-dependencies.sh

echo --------------------------
echo 💥 Identity.API 💥
echo --------------------------
# ls --all
echo --------------------------

sleep 10

# Release Mode
# dockerize -wait tcp://sql.data:1433 -timeout 300s -wait-retry-interval 30s && dotnet Identity.API.dll
# Debug Mode
# dockerize -wait tcp://sql.data:1433 -timeout 50s -wait-retry-interval 20s tail -f /dev/null

# TODO: Rewrite the checkDependency functions with named parameters, 
# so that we can achieve cmd usage similar to dockerize syntax as commented above
checkDependencyOthers sql.data:1433 20

echo "All Connected :)"

# Release Mode
# dotnet Identity.API.dll

# Debug Mode
tail -f /dev/null

echo --------------------------