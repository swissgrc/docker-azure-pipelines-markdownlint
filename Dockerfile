FROM node:22.21.1-bookworm-slim

LABEL org.opencontainers.image.vendor="Swiss GRC AG"
LABEL org.opencontainers.image.authors="Swiss GRC AG <opensource@swissgrc.com>"
LABEL org.opencontainers.image.title="azure-pipelines-markdownlint"
LABEL org.opencontainers.image.documentation="https://github.com/swissgrc/docker-azure-pipelines-markdownlint"

# Make sure to fail due to an error at any stage in shell pipes
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# markdownlint-cli

# renovate: datasource=npm depName=markdownlint-cli
ENV MARKDOWNLINT_VERSION=0.45.0

RUN npm install -g markdownlint-cli@${MARKDOWNLINT_VERSION} --ignore-scripts && \
  npm cache clean --force && \
  # Smoke test
  markdownlint --version