echo --------------------------
echo 💥Hello World💥
ls --all
echo --------------------------
dockerize -wait tcp://sql.data:1433 -timeout 300s -wait-retry-interval 30s && dotnet WebMVC.dll
echo --------------------------