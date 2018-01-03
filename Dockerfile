#
# docker file for creating an ideas-rest production system
#
# created on top of ubuntu 16.04 (LTS)
#

# pull base image
FROM ubuntu:16.04
MAINTAINER Niels Kolthoff "nkolthoff@gmail.com"

# dependencies
RUN apt-get update && apt-get install -y \
  sudo curl \
 && rm -rf /var/lib/apt/lists/*

# create a non-root user to execute from
RUN useradd -ms /bin/bash user && passwd -d user && adduser user sudo

# set the entryoint for docker run
COPY docker-entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +rx /usr/bin/entrypoint.sh

# copy init script
COPY docker-install-ideas-rest.sh /usr/bin/install-ideas-rest.sh
RUN chmod +rx /usr/bin/install-ideas-rest.sh

# setup the user
RUN chown -R user:user /home/user
USER user
ENV HOME /home/user
WORKDIR /home/user

# install haskell stack
RUN sudo apt-get update \
 && sudo curl -sSL https://get.haskellstack.org/ | sh \
 && sudo rm -rf /var/lib/apt/lists/*

ENV PATH="/home/user/.local/bin:$PATH"

# set entrypoint of the image
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
