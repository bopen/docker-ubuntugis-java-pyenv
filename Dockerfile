FROM bopen/ubuntu-pyenv:latest

MAINTAINER Alessandro Amici <a.amici@bopen.eu>

RUN apt-get update && apt-get install -y --no-install-recommends \
    python-software-properties \
    software-properties-common \
    && add-apt-repository ppa:webupd8team/java \
    && echo oracle-java9-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections \
    && apt-get update && apt-get install -y --no-install-recommends \
    libgtk-3-0 \
    libxtst6 \
    oracle-java9-installer \
    oracle-java9-set-default \
    xauth \
    xterm \
    && apt-get remove -y \
    python-software-properties \
    software-properties-common \
    && apt-get autoremove -y \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
