docker buildx build \
--label org.opencontainers.image.title=bigdata-rstudio \
--label org.opencontainers.image.description='container running RStudio on multiplatform to be used with UniPV course' \
--label org.opencontainers.image.url=https://github.com/lescai-teaching/bigdata-rstudio \
--label org.opencontainers.image.source=https://github.com/lescai-teaching/bigdata-rstudio --label org.opencontainers.image.version=1.3.1 \
--label org.opencontainers.image.created=2023-01-13T12:39:11.393Z \
--label org.opencontainers.image.licenses=MIT \
--platform linux/amd64,linux/arm64 \
--tag ghcr.io/lescai-teaching/bigdata-rstudio:1.3.1 \
--tag ghcr.io/lescai-teaching/bigdata-rstudio:latest \
--push .