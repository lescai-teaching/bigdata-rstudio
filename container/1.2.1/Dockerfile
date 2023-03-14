FROM ghcr.io/lescai-teaching/bigdata-rstudio:1.2.0

## INSTALL additional packages for the course
RUN install2.r --error --skipmissing --skipinstalled \
    ranger \
	randomForest

## reinstall tidyverse
RUN install2.r --error --skipmissing \
    tidyverse
    
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /tmp/downloaded_packages