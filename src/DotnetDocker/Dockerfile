FROM microsoft/windowsservercore:TP5

ADD DotNetCore.1.0.0-SDK.Preview2-x64.exe /temp/

# Add dotnet.exe to your path
RUN setx /M PATH "%PATH%;%ProgramFiles%\dotnet"

# Install dotnet SDK
RUN C:\temp\DotNetCore.1.0.0-SDK.Preview2-x64.exe /install /passive /quiet /norestart