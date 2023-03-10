# Available R version: 4, 4.1, 4.0
ARG VARIANT="4.2.2"
FROM rocker/r-ver:${VARIANT}

ENV S6_VERSION=v2.1.0.2
ENV RSTUDIO_VERSION=daily
ENV DEFAULT_USER=rstudio
ENV PANDOC_VERSION=default
ENV PATH=/usr/lib/rstudio-server/bin:$PATH
ENV CTAN_REPO=https://mirror.ctan.org/systems/texlive/tlnet
ENV PATH=$PATH:/usr/local/texlive/bin/linux

RUN /rocker_scripts/install_rstudio.sh
RUN /rocker_scripts/install_pandoc.sh

RUN set -e

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    libharfbuzz-dev \
    libfribidi-dev \
    libfreetype6-dev \
    libpng-dev \
    libtiff5-dev \
    libjpeg-dev \
    libxml2-dev \
    libcairo2-dev \
    libgit2-dev \
    default-libmysqlclient-dev \
    libpq-dev \
    libsasl2-dev \
    libsqlite3-dev \
    libssh2-1-dev \
    libxtst6 \
    libcurl4-openssl-dev \
    unixodbc-dev
    
EXPOSE 8787

CMD ["/init"]

RUN install2.r --error --skipinstalled \
    tidyverse \
    devtools \
    rmarkdown \
    BiocManager \
    vroom \
    gert

## dplyr database backends
RUN install2.r --error --skipmissing --skipinstalled \
    dbplyr \
    DBI \
    dtplyr \
    nycflights13 \
    Lahman \
    RMariaDB \
    RPostgres \
    RSQLite \
    fst
    
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /tmp/downloaded_packages

## Strip binary installed lybraries from RSPM
## https://github.com/rocker-org/rocker-versioned2/issues/340
RUN strip /usr/local/lib/R/site-library/*/libs/*.so

# Check the tidyverse core packages' version
RUN echo -e "Check the tidyverse package...\n"

RUN R -q -e "library(tidyverse)"

RUN echo -e "\nInstall tidyverse package, done!"

RUN /rocker_scripts/install_verse.sh

### INSTALL COURSE SPECIFIC PACKAGES

RUN install2.r --error --skipinstalled -n -1 \
        plotly \
        factoextra \
        cluster \
        tidymodels \
        markdown \
        GGally \
		infer \
    && rm -rf /tmp/downloaded_packages

ENV DISABLE_AUTH=true