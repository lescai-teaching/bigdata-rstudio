FROM ghcr.io/lescai-teaching/bigdata-rstudio:1.3.1

## INSTALL  packages for the course
RUN install2.r --error --skipmissing \
    stacks \
    doParallel
    
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /tmp/downloaded_packages