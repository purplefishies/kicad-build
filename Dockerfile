FROM ubuntu:20.04

# Install kicad deps
RUN apt-get update -q && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-upgrade -qqy \
    libocct-visualization-dev libocct-data-exchange-dev

RUN apt-get update -q && DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install --no-upgrade -qqy \
    tzdata  git cmake build-essential curl ccache \
    libcurl4 libcurl4-gnutls-dev \
    libboost-dev libboost-test-dev libboost-filesystem-dev libboost-regex-dev \
    liboce-foundation-dev liboce-ocaf-dev \
    emacs gettext iputils-ping libgtk-3-dev \
    libharfbuzz-dev ngspice \
    # libocct-visualization-dev \
    # libocct-foundation-dev \
    # libocct-ocaf-dev \
    ca-certificates libssl-dev \
    libngspice0-dev \
    libglew-dev libglm-dev swig \
    libcairo2-dev doxygen graphviz \
    python3-wxgtk4.0 \
    libwxgtk3.0-gtk3-0v5 libwxgtk3.0-gtk3-dev  python3 python3-dev \
    && \
    apt-get clean && \
    apt-get purge

RUN apt-get install --no-upgrade -qqy libocct-visualization-dev libocct-data-exchange-dev \
    libocct-modeling-algorithms-dev \
    libocct-modeling-data-dev \
    libocct-foundation-dev \
    libocct-ocaf-dev \
    libocct-foundation-dev \
    libocct-data-exchange-dev \
    libocct-ocaf-dev libocct-visualization-dev \
    libocct-modeling-algorithms-dev \
    libocct-modeling-data-dev 
    # && \
    #    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


