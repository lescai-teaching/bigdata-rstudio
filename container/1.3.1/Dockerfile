FROM ghcr.io/lescai-teaching/bigdata-rstudio:1.3.0

## install libgsl-dev
RUN apt-get update
RUN apt-get install -y libgsl-dev

## RE-INSTALL  packages for the course
RUN install2.r --error --skipmissing \
    tidyclust
    
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /tmp/downloaded_packages