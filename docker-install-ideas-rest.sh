#!/bin/bash
#
# this builds and installs ideas-rest
#

# remove the existing ideas-rest folder
rm -rf ideas-rest

# currently get the forked version of ideas-rest
git clone https://github.com/nkolthoff/ideas-rest.git

# call stack install to build and install ideas-rest
# use the stack branch for now
cd ideas-rest
git checkout stack
stack install
cd ..

# create a docs directory to store the api documentation
mkdir docs
