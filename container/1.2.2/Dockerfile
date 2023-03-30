FROM ghcr.io/lescai-teaching/bigdata-rstudio:1.2.1

## INSTALL additional packages for the course
RUN install2.r --error --skipmissing --skipinstalled \
    kknn \
	vip
    
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /tmp/downloaded_packages