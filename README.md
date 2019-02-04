# mono_nunit
mono docker image with added nunit support, it is based on https://github.com/mono/docker

## Quickstart

* `build` docker image
* `clean` remove docker image

only requires git and docker on the host machine

## Example use of this image

```
FROM beardedn5rd/mono:latest

RUN mono --version
RUN msbuild FooSolution.sln
RUN mono /dotnet/NUnit.ConsoleRunner.3.9.0/tools/nunit3-console.exe FooLibrary.dll
