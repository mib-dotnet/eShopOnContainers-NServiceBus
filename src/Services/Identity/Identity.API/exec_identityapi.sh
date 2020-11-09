echo --------------------------
echo 💥Hello World💥
ls --all
echo --------------------------
# dockerize -wait tcp://sql.data:1433 -timeout 300s -wait-retry-interval 30s && dotnet Identity.API.dll
# dockerize -wait tcp://sql.data:1433 -wait http://sql.data -timeout 50s -wait-retry-interval 20s tail -f /dev/null
sleep 50
dockerize -wait tcp://sql.data:1433 -timeout 90s -wait-retry-interval 40s tail -f /dev/null
echo --------------------------