# Kubernetes Loong64 — Submodule

<p align="center"><a href="README.md">English</a> | <a href="README-zh.md">中文</a></p>

Monorepo for [kubernetes-loong64](https://github.com/kubernetes-loong64), bringing Kubernetes and its core components to
the **LoongArch (loong64)** architecture.

This repository aggregates all component repositories as git submodules, making it easy to clone, manage branches, and
coordinate releases across the full stack.

## Components

| Submodule                                                                                                  | Description                                                 | Work Branch              |
|------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------|--------------------------|
| [kubernetes-loong64](https://github.com/kubernetes-loong64/kubernetes-loong64)                             | Kubernetes mainline port to loong64                         | `loong64-v1.36.1`        |
| [cli-loong64](https://github.com/kubernetes-loong64/cli-loong64)                                           | Docker CLI for loong64                                      | `loong64-v29.5.1`        |
| [containerd-loong64](https://github.com/kubernetes-loong64/containerd-loong64)                             | Container runtime (containerd) for loong64                  | `loong64-v2.3.1`         |
| [coredns-loong64](https://github.com/kubernetes-loong64/coredns-loong64)                                   | Cluster DNS (CoreDNS) for loong64                           | `loong64-v1.14.2`        |
| [cri-tools-loong64](https://github.com/kubernetes-loong64/cri-tools-loong64)                               | CRI command-line tools for loong64                          | `loong64-v1.36.0`        |
| [etcd-loong64](https://github.com/kubernetes-loong64/etcd-loong64)                                         | Distributed key-value store (etcd) for loong64              | `loong64-v3.6.8`         |
| [moby-loong64](https://github.com/kubernetes-loong64/moby-loong64)                                         | Docker (moby) for loong64                                   | `loong64-docker-v29.5.1` |
| [plugins-loong64](https://github.com/kubernetes-loong64/plugins-loong64)                                   | Kubernetes network plugins for loong64                      | `loong64-v1.9.1`         |
| [release-loong64](https://github.com/kubernetes-loong64/release-loong64)                                   | Release tooling and artifacts for loong64                   | `loong64-v0.21.1`        |
| [runc-loong64](https://github.com/kubernetes-loong64/runc-loong64)                                         | Container runtime (runc) for loong64                        | `loong64-v1.4.2`         |
| [template-loong64](https://github.com/kubernetes-loong64/template-loong64)                                 | Repository template                                         | `main`                   |
| [tini-loong64](https://github.com/kubernetes-loong64/tini-loong64)                                         | Container init (tini) for loong64                           | `loong64-master`         |
| [jdk-loong64](https://github.com/kubernetes-loong64/jdk-loong64)                                           | JDK (Java Development Kit) container images                 | `main`                   |
| [maven-loong64](https://github.com/kubernetes-loong64/maven-loong64)                                       | Apache Maven container images for loong64                   | `main`                   |
| [gradle-loong64](https://github.com/kubernetes-loong64/gradle-loong64)                                     | Gradle container images for loong64                         | `main`                   |
| [runner-tools-base-images-loong64](https://github.com/kubernetes-loong64/runner-tools-base-images-loong64) | gitlab-runner-helper base images for loong64                | `loong64-v0.0.43`        |
| [gitlab-runner-loong64](https://github.com/kubernetes-loong64/gitlab-runner-loong64)                       | gitlab-runner-helper container image porting to LoongArch64 | `loong64-v19.0.1`        |
| [.github](https://github.com/kubernetes-loong64/.github)                                                   | Shared GitHub configurations                                | `main`                   |

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

> Applies to: moby-loong64, tini-loong64, cli-loong64, runc-loong64, containerd-loong64

- [Install containerd and docker binaries on LoongArch](https://xuxiaowei.io/t/754)
- [Install containerd and docker RPM packages on LoongArch](https://xuxiaowei.io/t/811)

## License

[Apache License 2.0](LICENSE)
