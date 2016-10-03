FROM microsoft/dotnet:latest

WORKDIR /app
ENTRYPOINT ["dotnet", "run"]
EXPOSE 5004/tcp

COPY project.json ./
RUN dotnet restore

COPY . ./
RUN dotnet build