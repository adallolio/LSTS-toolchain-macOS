FROM ubuntu:16.04
MAINTAINER Alberto Dallolio <albydallo@gmail.com>

# Working directory
ENV HOME /root
WORKDIR $HOME

# Provide basic environment features
RUN apt-get update && apt-get install -y \
    make \
    cmake \
    python \
    doxygen \
    default-jdk \
    libvtk5.10 \
    libvtk-java \
    openssh-server \
    ant \
    git \
    tig \
    curl \
    wget \
    nano \
    gcc \
    g++ \
    autoconf \
    automake

# Clone and build Dune environment
RUN mkdir dune_all && \
    cd dune_all && \
    git clone https://github.com/LSTS/dune.git && \
    mkdir build && \
    cd build && \
    cmake ../dune && \
    make -j4

# Clone and build Neptus environment
RUN git clone https://github.com/LSTS/neptus.git && \
    cd neptus && \
    ant 

# Clone Imc environment
RUN git clone https://github.com/LSTS/imc.git


CMD ["bash"]