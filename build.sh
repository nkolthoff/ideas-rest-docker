#!/bin/bash
#
# docker build script
#

# create a directory to store the build results to
if [ ! -d "home" ]; then
   mkdir home
   if [ $USER == 'root' ]; then
      chown $SUDO_USER:$SUDO_USER home
   else
      chown $USER:$USER home
   fi
fi

# execute the build and tag it as latest
docker build .
docker tag `docker images -q | head -1` ideas-docker:latest
