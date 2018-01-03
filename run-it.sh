#!/bin/bash
#
# docker run interactive script
#
docker run -it --entrypoint=/bin/bash -v $(pwd)/home:/home/user -p 8081:8081 ideas-docker
