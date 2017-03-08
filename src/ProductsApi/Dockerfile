FROM microsoft/dotnet:1.0.0-preview2-sdk

MAINTAINER Julien Corioland, Microsoft (@jcorioland)

WORKDIR /app
ENTRYPOINT ["dotnet", "run"]
EXPOSE 5000

ENV ASPNETCORE_URLS http://0.0.0.0:5000

COPY project.json ./
RUN ["dotnet", "restore"]

COPY . /app
RUN ["dotnet", "build"]