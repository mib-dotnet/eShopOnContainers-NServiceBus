echo --------------------------
echo 💥Hello World💥
ls --all
echo --------------------------
dockerize -wait tcp://sql.data -timeout 300s -wait-retry-interval 30s && dotnet WebMVC.dll
echo --------------------------