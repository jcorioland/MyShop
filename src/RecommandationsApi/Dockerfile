FROM jcorioland/win-dotnetcore:latest

EXPOSE 5003/tcp
ENTRYPOINT ["dotnet", "run"]

COPY . /app

WORKDIR /app

RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]