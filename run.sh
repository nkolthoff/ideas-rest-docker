#!/bin/bash
#
# docker run script
#
docker run -v $(pwd)/home:/home/user -p 8081:8081 ideas-docker
