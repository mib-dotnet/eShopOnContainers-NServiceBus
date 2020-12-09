echo --------------------------
echo 💥WebMVC💥
echo --------------------------
ls --all
echo --------------------------
sleep 100
dockerize -wait tcp://sql.data:1433 -wait http://catalog.api -wait http://ordering.api -wait http://identity.api -wait http://basket.api -wait http://marketing.api -timeout 60s -wait-retry-interval 90s tail -f /dev/null
echo --------------------------