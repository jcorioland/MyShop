FROM jcorioland/dotnetcore:win2k16tp5

EXPOSE 5004/tcp
ENTRYPOINT ["dotnet", "run"]

COPY . /app

WORKDIR /app

RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]