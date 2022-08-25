# Docker image for running markdownlint-cli in Azure Pipelines container jobs

<!-- markdownlint-disable MD013 -->
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://github.com/swissgrc/docker-azure-pipelines-markdownlint/blob/main/LICENSE) [![Build](https://img.shields.io/github/workflow/status/swissgrc/docker-azure-pipelines-markdownlint/Build/develop?style=flat-square)](https://github.com/swissgrc/docker-azure-pipelines-markdownlint/actions/workflows/publish.yml) [![Pulls](https://img.shields.io/docker/pulls/swissgrc/azure-pipelines-markdownlint.svg?style=flat-square)](https://hub.docker.com/r/swissgrc/azure-pipelines-markdownlint) [![Stars](https://img.shields.io/docker/stars/swissgrc/azure-pipelines-markdownlint.svg?style=flat-square)](https://hub.docker.com/r/swissgrc/azure-pipelines-markdownlint)
<!-- markdownlint-restore -->

Docker image to run [markdownlint] commands in [Azure Pipelines container jobs].

## Usage

This container can be used to run markdownlint commands in [Azure Pipelines container jobs].

### Azure Pipelines Container Job

To use the image in an Azure Pipelines Container Job add the following task use it with the `container` property.

The following example shows the container used for linting the repository:

```yaml
- stage: Build
  jobs:
  - job: Lint
    steps:
    - bash: |
        markdownlint --output /markdownlint.json --json --config /.markdownlint.json /docs
      target: swissgrc/azure-pipelines-markdownlint:latest
```

### Tags

<!-- markdownlint-disable MD013 -->
| Tag      | Description                                                                                       | Base Image             | Markdownlint-Cli | Size                                                                                                                                  |
|----------|---------------------------------------------------------------------------------------------------|------------------------|------------------|---------------------------------------------------------------------------------------------------------------------------------------|
| latest   | Latest stable release (from `main` branch)                                                        | node:18.7.0-bullseye   | 0.32.2           | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-markdownlint/latest?style=flat-square)   |
| unstable | Latest unstable release (from `develop` branch)                                                   | node:18.8.0-bullseye   | 0.32.2           | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-markdownlint/unstable?style=flat-square) |
| 0.31.1   | [markdownlint-cli 0.31.1](https://github.com/igorshubovych/markdownlint-cli/releases/tag/v0.31.1) | node:18.4.0-bullseye   | 0.31.1           | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-markdownlint/0.31.1?style=flat-square)   |
| 0.32.0   | [markdownlint-cli 0.32.0](https://github.com/igorshubovych/markdownlint-cli/releases/tag/v0.32.0) | node:18.6.0-bullseye   | 0.32.0           | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-markdownlint/0.32.0?style=flat-square)   |
| 0.32.1   | [markdownlint-cli 0.32.1](https://github.com/igorshubovych/markdownlint-cli/releases/tag/v0.32.1) | node:18.6.0-bullseye   | 0.32.1           | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-markdownlint/0.32.1?style=flat-square)   |
| 0.32.2   | [markdownlint-cli 0.32.2](https://github.com/igorshubovych/markdownlint-cli/releases/tag/v0.32.1) | node:18.7.0-bullseye   | 0.32.2           | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-markdownlint/0.32.2?style=flat-square)   |
<!-- markdownlint-restore -->

### Configuration

These environment variables are supported:

| Environment variable   | Default value        | Description                                                      |
|------------------------|----------------------|------------------------------------------------------------------|
| MARKDOWNLINT_VERSION   | `0.32.2`             | Version of markdownlint-cli installed in the image.              |

[markdownlint]: https://github.com/igorshubovych/markdownlint-cli
[Azure Pipelines container jobs]: https://docs.microsoft.com/en-us/azure/devops/pipelines/process/container-phases
