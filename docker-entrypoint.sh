#!/bin/bash
#
# Docker entry point file.
#

# check if we need to install ideas-rest
if [ ! -f ~/.local/bin/ideas-rest ]; then
    echo "installing ideas-rest"
    /usr/bin/install-ideas-rest.sh
fi

# start ideas-rest
echo "ideas-rest is starting..."
ideas-rest
