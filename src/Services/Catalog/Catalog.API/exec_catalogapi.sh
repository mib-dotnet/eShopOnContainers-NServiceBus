#!/bin/sh
# echo "Hello, my name is Shiny! Who am I talking to?"
# echo Type your name to continue:
# read name
echo --------------------------
# echo Nice to meet you $name!.
# echo You have done a great job.
echo 💥 Congratulations $name 💥
echo --------------------------
ls --all
echo --------------------------
# Release Mode
# dockerize -wait tcp://sql.data:1433 -timeout 300s -wait-retry-interval 30s && dotnet Catalog.API.dll
# Debug Mode
dockerize -wait tcp://sql.data:1433 -timeout 90s -wait-retry-interval 40s tail -f /dev/null
# dockerize -wait tcp://sql.data:1433 -wait http://sql.data -timeout 50s -wait-retry-interval 20s dotnet Catalog.API.dll
echo --------------------------
