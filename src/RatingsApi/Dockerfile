FROM microsoft/dotnet:latest

WORKDIR /app
ENTRYPOINT ["dotnet", "run"]
EXPOSE 5002

COPY project.json ./
RUN dotnet restore

COPY . ./
RUN dotnet build