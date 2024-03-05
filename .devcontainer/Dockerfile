# Pre-built Dev Container Image for R. More info: https://github.com/rocker-org/devcontainer-images/pkgs/container/devcontainer%2Ftidyverse
FROM ghcr.io/rocker-org/devcontainer/tidyverse:4

RUN install2.r --error --skipinstalled -n -1 \
        plotly \
        factoextra \
        cluster \
        tidymodels \
        markdown \
        GGally \
        ggfortify \
        ggbeeswarm \
        moderndive \
        dbscan \
        pheatmap \
        cowplot \
        gghighlight \
        MetBrewer \
        infer \
        && rm -rf /tmp/downloaded_packages

ENV DISABLE_AUTH=true
