FROM ghcr.io/lescai-teaching/bigdata-rstudio:1.2.2

## install gsl-config needed for dependencies
RUN mkdir -p /tmp/downloaded_packages
WORKDIR /tmp/downloaded_packages
RUN wget https://ftp.gnu.org/gnu/gsl/gsl-2.7.tar.gz
RUN tar -xvzf gsl-2.7.tar.gz
WORKDIR /tmp/downloaded_packages/gsl-2.7
RUN ./configure
RUN make 
RUN make install
WORKDIR /

## INSTALL additional packages for the course
RUN install2.r --error --skipmissing --skipinstalled \
    tidyclust
    
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /tmp/downloaded_packages