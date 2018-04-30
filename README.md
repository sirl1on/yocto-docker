# yocto-docker
Docker image to build a Yocto Project

This is a docker image to enbable building
a Yocto Linux project on an arbitrary develioment
workstation.

Currently, it is focussed on the NXP i-MX6 SOC,
which specifies, along others, Ubuntu 14.04 as
certified build environment.

The image contains the "repo" tool needed to clone
the needed layers.

## Usage

    docker run -it --rm -v $(pwd):$(pwd) -w $(pwd)  steho/yocto bash

Within the container you can use all the Yocto/bitbake commands
as if you would work on your local machine.
