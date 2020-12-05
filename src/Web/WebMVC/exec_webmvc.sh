echo --------------------------
echo 💥WebMVC💥
echo --------------------------
ls --all
echo --------------------------
sleep 100
dockerize -wait tcp://sql.data:1433 -wait http://rabbitmq -timeout 60s -wait-retry-interval 90s tail -f /dev/null
# dockerize -wait tcp://sql.data:1433 -wait http://sql.data -timeout 50s -wait-retry-interval 20s dotnet Catalog.API.dll
echo --------------------------