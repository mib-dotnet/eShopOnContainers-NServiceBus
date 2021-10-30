# VSTS Related Documentation

## Builds and releases

1. [VSTS build for Xamarin App (Android)](builds/xamarin-android.md)
2. [VSTS build for Xamarin App (iOS)](builds/xamarin-iOS.md)


# Docker build commands - Auto executed from VS Debug
docker-compose  -f "C:\Users\murali.balasubramani\source\MyGit\eShopOnContainers-NServiceBus\docker-compose.yml" -f "C:\Users\murali.balasubramani\source\MyGit\eShopOnContainers-NServiceBus\docker-compose.override.yml" -f "C:\Users\murali.balasubramani\source\MyGit\eShopOnContainers-NServiceBus\docker-compose.vs.debug.yml" -p dockercompose12234726197041303319 --no-ansi config

docker-compose  -f "C:\Users\murali.balasubramani\source\MyGit\eShopOnContainers-NServiceBus\docker-compose.yml" -f "C:\Users\murali.balasubramani\source\MyGit\eShopOnContainers-NServiceBus\docker-compose.override.yml" -f "C:\Users\murali.balasubramani\source\MyGit\eShopOnContainers-NServiceBus\obj\Docker\docker-compose.vs.debug.g.yml" -f "C:\Users\murali.balasubramani\source\MyGit\eShopOnContainers-NServiceBus\docker-compose.vs.debug.yml" -p dockercompose12234726197041303319 --no-ansi config

docker-compose  -f "C:\Users\murali.balasubramani\source\MyGit\eShopOnContainers-NServiceBus\docker-compose.yml" -f "C:\Users\murali.balasubramani\source\MyGit\eShopOnContainers-NServiceBus\docker-compose.override.yml" -f "C:\Users\murali.balasubramani\source\MyGit\eShopOnContainers-NServiceBus\obj\Docker\docker-compose.vs.debug.g.yml" -f "C:\Users\murali.balasubramani\source\MyGit\eShopOnContainers-NServiceBus\docker-compose.vs.debug.yml" -p dockercompose12234726197041303319 --no-ansi up -d --build --force-recreate --remove-orphans

docker-compose -f "docker-compose.yml" -f "docker-compose.override.yml" up -d --build --force-recreate --remove-orphans