#!/bin/bash

#file imports
source ./await-container-dependencies.sh

# echo "Hello, my name is Shiny! Who am I talking to?"
# echo Type your name to continue:
# read name
echo --------------------------
echo 💥 Catalog.API 💥
echo --------------------------
# ls --all
echo --------------------------

sleep 5

# Release Mode
# dockerize -wait tcp://sql.data:1433 -timeout 300s -wait-retry-interval 30s && dotnet Catalog.API.dll
# Debug Mode
# dockerize -wait tcp://sql.data:1433 -wait http://rabbitmq:15672 -timeout 45s -wait-retry-interval 70s tail -f /dev/null

# TODO: Rewrite the checkDependency functions with named parameters, 
# so that we can achieve cmd usage similar to dockerize syntax as commented above
checkDependencyOthers sql.data:1433 20

checkDependencyHTTP rabbitmq:15672 20



# Release Mode
# dotnet Catalog.API.dll

# Debug Mode
tail -f /dev/null

echo --------------------------


