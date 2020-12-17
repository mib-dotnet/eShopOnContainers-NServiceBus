#!/bin/bash

#file imports
source ./await-container-dependencies.sh

echo --------------------------
echo 💥WebMVC💥
echo --------------------------
ls --all
echo --------------------------
sleep 40
# dockerize -wait tcp://sql.data:1433 -wait http://catalog.api -wait http://ordering.api -wait http://identity.api -wait http://basket.api -wait http://marketing.api -timeout 60s -wait-retry-interval 90s tail -f /dev/null
checkDependencyOthers sql.data:1433 15

checkDependencyHTTP catalog.api 15

checkDependencyHTTP identity.api 15

checkDependencyHTTP ordering.api 15

checkDependencyHTTP basket.api 15

checkDependencyHTTP marketing.api 15

checkDependencyHTTP rabbitmq:15672 15



# Release Mode
# dotnet WebMVC.dll

# Debug Mode
tail -f /dev/null
echo --------------------------