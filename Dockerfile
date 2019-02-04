FROM mono:latest

RUN mono --version
RUN apt update && apt install -y git

RUN mkdir /dotnet
WORKDIR /dotnet
RUN nuget install NUnit -Version 3.11.0 && nuget install NUnit.Console -Version 3.9.0
