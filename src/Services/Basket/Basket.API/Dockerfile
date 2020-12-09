FROM microsoft/aspnetcore:2.0
ARG source
WORKDIR /app
EXPOSE 80
COPY . .
ENV DOCKERIZE_VERSION v0.6.1
# WORKDIR /app/images
# COPY /app/images/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz .
# ADD /images/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz /usr/local/bin
RUN ls --all && cd obj/Docker/empty && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && cd .. && rm -rf images
# ENTRYPOINT ["sh","-c","cd bin/Debug/netcoreapp2.0 && ls --all && exec ./sayhello.sh"]
ENTRYPOINT ["sh","-c","cd bin/Debug/netcoreapp2.0 && exec ./exec_basketapi.sh"]