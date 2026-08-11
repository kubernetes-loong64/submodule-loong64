# Kubernetes Loong64 — Submodule

<p align="center"><a href="README.md">English</a> | <a href="README-zh.md">中文</a></p>

Monorepo for [kubernetes-loong64](https://github.com/kubernetes-loong64), bringing Kubernetes and its core components to
the **LoongArch (loong64)** architecture.

This repository aggregates all component repositories as git submodules, making it easy to clone, manage branches, and
coordinate releases across the full stack.

## Components

| Submodule                                                                                                  | Description                                                                                  | Work Branch                    |
|------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------|--------------------------------|
| [.github](https://github.com/kubernetes-loong64/.github)                                                   | Shared GitHub configurations                                                                 | `main`                         |
| [actions-runner-loong64](https://github.com/kubernetes-loong64/actions-runner-loong64)                     | GitHub Actions runner container image for loong64                                            | `loong64-v2.336.0`             |
| [buildx-loong64](https://github.com/kubernetes-loong64/buildx-loong64)                                     | Docker Buildx for loong64                                                                    | `loong64-v0.35.0`              |
| [cli-loong64](https://github.com/kubernetes-loong64/cli-loong64)                                           | Docker CLI for loong64                                                                       | `loong64-v29.7.2`              |
| [compose-loong64](https://github.com/kubernetes-loong64/compose-loong64)                                   | Docker Compose for loong64                                                                   | `loong64-v5.4.0`               |
| [debian-loong64](https://github.com/kubernetes-loong64/debian-loong64)                                     | Sync Debian container images to Docker Hub for loong64                                       | `main`                         |
| [containerd-loong64](https://github.com/kubernetes-loong64/containerd-loong64)                             | Container runtime (containerd) for loong64                                                   | `loong64-v2.3.3`               |
| [createrepo](https://github.com/kubernetes-loong64/createrepo)                                             | createrepo_c container images for RPM repository metadata generation (amd64, arm64, loong64) | `1.2.4`                        |
| [coredns-loong64](https://github.com/kubernetes-loong64/coredns-loong64)                                   | Cluster DNS (CoreDNS) for loong64                                                            | `loong64-v1.14.2`              |
| [cri-tools-loong64](https://github.com/kubernetes-loong64/cri-tools-loong64)                               | CRI command-line tools for loong64                                                           | `loong64-v1.36.0`              |
| [etcd-loong64](https://github.com/kubernetes-loong64/etcd-loong64)                                         | Distributed key-value store (etcd) for loong64                                               | `loong64-v3.6.8`               |
| [git-loong64](https://github.com/kubernetes-loong64/git-loong64)                                           | Git version control system container image for loong64                                       | `loong64-v2.54.0`              |
| [gitlab-runner-loong64](https://github.com/kubernetes-loong64/gitlab-runner-loong64)                       | gitlab-runner-helper container image porting to LoongArch64                                  | `loong64-v19.2.1`              |
| [go-containerregistry-loong64](https://github.com/kubernetes-loong64/go-containerregistry-loong64)         | go-containerregistry CLI tools (crane, gcrane, krane) container images                       | `loong64-v0.21.9`              |
| [gradle-loong64](https://github.com/kubernetes-loong64/gradle-loong64)                                     | Gradle container images for loong64                                                          | `loong64-9.7.0`                |
| [htop-loong64](https://github.com/kubernetes-loong64/htop-loong64)                                         | Interactive process viewer (htop) for loong64                                                | `loong64-3.5.2`                |
| [jdk-loong64](https://github.com/kubernetes-loong64/jdk-loong64)                                           | JDK (Java Development Kit) container images                                                  | `main`                         |
| [jenkins-loong64](https://github.com/kubernetes-loong64/jenkins-loong64)                                   | Jenkins container images for loong64                                                         | `loong64-2.577`                |
| [kubernetes-loong64](https://github.com/kubernetes-loong64/kubernetes-loong64)                             | Kubernetes mainline port to loong64                                                          | `loong64-v1.36.1`              |
| [maven-loong64](https://github.com/kubernetes-loong64/maven-loong64)                                       | Apache Maven container images for loong64                                                    | `main`                         |
| [minio-loong64](https://github.com/kubernetes-loong64/minio-loong64)                                       | MinIO server and mc (MinIO Client) for loong64                                               | `loong64-2026-02-12T20-18-48Z` |
| [moby-loong64](https://github.com/kubernetes-loong64/moby-loong64)                                         | Docker (moby) for loong64                                                                    | `loong64-docker-v29.7.2`       |
| [nexus-loong64](https://github.com/kubernetes-loong64/nexus-loong64)                                       | Nexus Repository Manager container images for loong64                                        | `loong64-3.95.0`               |
| [node-loong64](https://github.com/kubernetes-loong64/node-loong64)                                         | Node.js container images for loong64                                                         | `loong64-v24.18.0`             |
| [nginx-loong64](https://github.com/kubernetes-loong64/nginx-loong64)                                       | Nginx container images for loong64                                                           | `loong64-1.31.3`               |
| [ossutil-loong64](https://github.com/kubernetes-loong64/ossutil-loong64)                                   | ossutil (Alibaba Cloud OSS CLI) for loong64                                                  | `loong64-v1.7.19`              |
| [plugins-loong64](https://github.com/kubernetes-loong64/plugins-loong64)                                   | Kubernetes network plugins for loong64                                                       | `loong64-v1.9.1`               |
| [redis-loong64](https://github.com/kubernetes-loong64/redis-loong64)                                       | Redis container images for loong64                                                           | `loong64-v8.8.0`               |
| [release-loong64](https://github.com/kubernetes-loong64/release-loong64)                                   | Release tooling and artifacts for loong64                                                    | `loong64-v0.21.1`              |
| [reprepro](https://github.com/kubernetes-loong64/reprepro)                                                 | reprepro container images for deb repository metadata generation (amd64, arm64, loong64)     | `reprepro-5.5.1`               |
| [runc-loong64](https://github.com/kubernetes-loong64/runc-loong64)                                         | Container runtime (runc) for loong64                                                         | `loong64-v1.5.1`               |
| [runner-tools-base-images-loong64](https://github.com/kubernetes-loong64/runner-tools-base-images-loong64) | gitlab-runner-helper base images for loong64                                                 | `loong64-v0.0.47`              |
| [template-loong64](https://github.com/kubernetes-loong64/template-loong64)                                 | Repository template                                                                          | `main`                         |
| [tini-loong64](https://github.com/kubernetes-loong64/tini-loong64)                                         | Container init (tini) for loong64                                                            | `loong64-master`               |
| [valkey-loong64](https://github.com/kubernetes-loong64/valkey-loong64)                                     | Valkey container images for loong64                                                          | `loong64-9.1.1`                |

## Quick Start

### Clone with all submodules

```bash
git clone --recurse-submodules https://github.com/kubernetes-loong64/submodule-loong64.git
cd submodule-loong64
```

### Checkout work branches

Each component has its own loong64 work branch. Use the Makefile to switch all submodules at once:

```bash
# Switch all submodules to their loong64 work branches
make checkout-all-work

# Switch all submodules (and main repo) back to main branch
make checkout-all-main
```

## Makefile Reference

| Target                   | Description                                                           |
|--------------------------|-----------------------------------------------------------------------|
| `make checkout-all-main` | Checkout `main` branch for the main repo and all submodules           |
| `make checkout-all-work` | Checkout the loong64 work branch for the main repo and each submodule |

## Contributing

Contributions are welcome. Each component follows standard Git workflow:

1. Work within the relevant submodule directory
2. Commit changes using [gitmoji](AGENTS.md) shortcodes
3. Every commit must include a `Signed-off-by:` line (DCO)

See [AGENTS.md](AGENTS.md) for detailed commit conventions.

## Documentation

- [Install containerd and docker binaries on LoongArch](https://xuxiaowei.io/t/754)
- [Install containerd and docker RPM packages on LoongArch](https://xuxiaowei.io/t/811)
- [Install containerd and docker RPM packages from RPM repository on LoongArch](https://xuxiaowei.io/t/812)
- [Install Kubernetes on LoongArch (loong64)](https://xuxiaowei.io/t/858)
- [Video: Loongson 3B6000 install Kubernetes 1.30.1 with containerd 2.3.1](https://www.bilibili.com/video/BV1VK7H68EtF/)

## License

[Apache License 2.0](LICENSE)
