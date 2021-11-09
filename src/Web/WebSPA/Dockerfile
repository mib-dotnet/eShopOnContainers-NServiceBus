FROM mcr.microsoft.com/dotnet/aspnet:2.1
ARG source
WORKDIR /app
EXPOSE 80
COPY ${source:-obj/Docker/publish} .
ENTRYPOINT ["dotnet", "WebSPA.dll"]
