# Docker install for IDEAS-REST

## Overview
Easy setup using a docker image for the IDEAS-REST Distributed Expert Knowledge module.

## Prerequisites
* Docker

## Building the image
Creates a clean enviroment with a haskell stack based install (no compiler or packages).
```
$ docker ./build.sh
```
## Running the image
First run: Installs the haskell compiler and required packages for ideas-rest.

Following runs: starts ideas-rest mapped to port 8081 of the host. Navigate to [http://ip_host:8081](http://ip_host:8081) to access the webinterface.
```
$ docker ./run.sh
```
## Running the image (interactive mode, starting a command prompt)
Provides an interactive mode, usable during development.
```
$ docker ./run-it.sh
```
