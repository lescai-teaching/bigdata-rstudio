FROM ghcr.io/lescai-teaching/bigdata-rstudio:1.1.0

## INSTALL additional packages for the course
RUN install2.r --error --skipmissing --skipinstalled \
    ggfortify \
    Ecdat \
    HistData \
    ggbeeswarm \
	moderndive \
	dbscan \
	pheatmap \
	cowplot \
	gghighlight \
	MetBrewer
    
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /tmp/downloaded_packages