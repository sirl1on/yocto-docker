FROM ubuntu:14.04

RUN apt update && \
	apt -y upgrade && \
	apt -y install \
		gawk wget git-core diffstat unzip texinfo gcc-multilib \
		build-essential chrpath socat libsdl1.2-dev \
		libsdl1.2-dev xterm sed cvs subversion coreutils texi2html \
		docbook-utils python-pysqlite2 help2man make gcc g++ desktop-file-utils \
		libgl1-mesa-dev libglu1-mesa-dev mercurial autoconf automake groff curl lzop asciidoc \
		u-boot-tools \
		vim

RUN  curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo \
	&&  chmod a+x /usr/local/bin/repo
ADD startup.sh /
RUN mkdir /local_home

ENTRYPOINT ["/startup.sh"]
