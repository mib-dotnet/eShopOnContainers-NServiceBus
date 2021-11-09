FROM mcr.microsoft.com/dotnet/aspnet:2.1
ARG source
WORKDIR /app
EXPOSE 80
#COPY ${source:-obj/Docker/publish} .
COPY . .
ENV DOCKERIZE_VERSION v0.6.1
RUN ls --all && cd obj/Docker/empty && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && cd .. && rm -rf images
ENTRYPOINT ["sh","-c","cd bin/Debug/netcoreapp2.0 && exec ./exec_webmvc.sh"]
