FROM ubuntu:16.04

RUN apt update && \
	apt -y upgrade && \
	apt -y install \
		gawk wget git-core diffstat unzip texinfo gcc-multilib \
        build-essential chrpath socat libsdl1.2-dev vim locales sudo python3 cpio
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8

ENV LANG en_US.UTF-8 

#RUN  curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo \
#	&&  chmod a+x /usr/local/bin/repo

ADD startup.sh /
RUN mkdir /local_home

ENTRYPOINT ["/startup.sh"]
