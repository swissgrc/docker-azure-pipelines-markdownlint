# Docker image for running markdownlint-cli in Azure Pipelines container jobs

<!-- markdownlint-disable MD013 -->
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://github.com/swissgrc/docker-azure-pipelines-markdownlint/blob/main/LICENSE) [![Build](https://img.shields.io/github/actions/workflow/status/swissgrc/docker-azure-pipelines-markdownlint/publish.yml?branch=develop&style=flat-square)](https://github.com/swissgrc/docker-azure-pipelines-markdownlint/actions/workflows/publish.yml) [![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=swissgrc_docker-azure-pipelines-markdownlint&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=swissgrc_docker-azure-pipelines-markdownlint) [![Pulls](https://img.shields.io/docker/pulls/swissgrc/azure-pipelines-markdownlint.svg?style=flat-square)](https://hub.docker.com/r/swissgrc/azure-pipelines-markdownlint) [![Stars](https://img.shields.io/docker/stars/swissgrc/azure-pipelines-markdownlint.svg?style=flat-square)](https://hub.docker.com/r/swissgrc/azure-pipelines-markdownlint)
<!-- markdownlint-restore -->

> ## ⚠️ This repository is deprecated
>
> This image is no longer maintained and has **not** been migrated to our new monorepo. We recommend switching to an officially maintained alternative such as [`igorshubovych/markdownlint-cli`](https://github.com/igorshubovych/markdownlint-cli) or any other actively maintained markdownlint image.
>
> **Timeline:**
>
> - **2026-05-01** — Deprecated, repository archived (read-only)
> - **2026-07-01** — Container images on ghcr.io and docker.io will be deleted. All existing tags remain available until this date.
> - **2026-09-01** — This repository will be deleted from GitHub
>
> **Questions?** Please use the [Discussions](https://github.com/swissgrc/docker-azure-pipelines/discussions) on our main repository.

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
### Included Software
- Node.js
- [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli)

### Tags

<!-- markdownlint-disable MD013 -->
| Tag      | Description                                                      | Size                                                                                                                                  |
|----------|------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------|
| latest   | Latest stable release (from `main` branch)                       | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-markdownlint/latest?style=flat-square)   |
| unstable | Latest unstable release (from `develop` branch)                  | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-markdownlint/unstable?style=flat-square) |
| x.y.z    | Image for a specific version of markdownlint-cli                 |                                                                                                                                       |
<!-- markdownlint-restore -->

[markdownlint]: https://github.com/igorshubovych/markdownlint-cli
[Azure Pipelines container jobs]: https://docs.microsoft.com/en-us/azure/devops/pipelines/process/container-phases
