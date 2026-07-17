# Kubernetes Loong64 — 子模块

<p align="center"><a href="README.md">English</a> | <a href="README-zh.md">中文</a></p>

[kubernetes-loong64](https://github.com/kubernetes-loong64) 的 monorepo 管理仓库，致力于将 Kubernetes 及其核心组件移植到
**LoongArch (loong64)** 架构。

本仓库通过 git submodule 聚合所有组件仓库，方便统一克隆、管理分支和协调各组件发布。

## 组件列表

| 子模块                                                                                                        | 说明                                                    | 工作分支                           |
|------------------------------------------------------------------------------------------------------------|-------------------------------------------------------|--------------------------------|
| [.github](https://github.com/kubernetes-loong64/.github)                                                   | 共享 GitHub 配置                                          | `main`                         |
| [buildx-loong64](https://github.com/kubernetes-loong64/buildx-loong64)                                     | Docker Buildx loong64 移植                              | `loong64-v0.35.0`              |
| [cli-loong64](https://github.com/kubernetes-loong64/cli-loong64)                                           | Docker CLI loong64 移植                                 | `loong64-v29.6.1`              |
| [compose-loong64](https://github.com/kubernetes-loong64/compose-loong64)                                   | Docker Compose loong64 移植                             | `loong64-v5.3.1`               |
| [debian-loong64](https://github.com/kubernetes-loong64/debian-loong64)                                     | 同步 Debian 容器镜像到 Docker Hub 用于 loong64                 | `main`                         |
| [containerd-loong64](https://github.com/kubernetes-loong64/containerd-loong64)                             | 容器运行时 (containerd) loong64 移植                         | `loong64-v2.3.3`               |
| [createrepo](https://github.com/kubernetes-loong64/createrepo)                                             | createrepo_c 容器镜像，用于生成 RPM 仓库元数据（amd64、arm64、loong64） | `1.2.4`                        |
| [coredns-loong64](https://github.com/kubernetes-loong64/coredns-loong64)                                   | 集群 DNS (CoreDNS) loong64 移植                           | `loong64-v1.14.2`              |
| [cri-tools-loong64](https://github.com/kubernetes-loong64/cri-tools-loong64)                               | CRI 命令行工具 loong64 移植                                  | `loong64-v1.36.0`              |
| [etcd-loong64](https://github.com/kubernetes-loong64/etcd-loong64)                                         | 分布式键值存储 (etcd) loong64 移植                             | `loong64-v3.6.8`               |
| [git-loong64](https://github.com/kubernetes-loong64/git-loong64)                                           | Git 版本控制系统容器镜像 loong64 移植                             | `loong64-v2.54.0`              |
| [gitlab-runner-loong64](https://github.com/kubernetes-loong64/gitlab-runner-loong64)                       | gitlab-runner-helper 容器镜像 LoongArch64 移植              | `loong64-v19.2.0`              |
| [gradle-loong64](https://github.com/kubernetes-loong64/gradle-loong64)                                     | Gradle LoongArch64 容器镜像                               | `main`                         |
| [htop-loong64](https://github.com/kubernetes-loong64/htop-loong64)                                         | 交互式进程查看器 (htop) loong64 移植                            | `loong64-3.5.1`                |
| [jdk-loong64](https://github.com/kubernetes-loong64/jdk-loong64)                                           | JDK (Java 开发工具包) LoongArch64 容器镜像                     | `main`                         |
| [jenkins-loong64](https://github.com/kubernetes-loong64/jenkins-loong64)                                   | Jenkins LoongArch64 容器镜像                              | `loong64-2.573`                |
| [kubernetes-loong64](https://github.com/kubernetes-loong64/kubernetes-loong64)                             | Kubernetes 主线的 loong64 移植                             | `loong64-v1.36.1`              |
| [maven-loong64](https://github.com/kubernetes-loong64/maven-loong64)                                       | Apache Maven LoongArch64 容器镜像                         | `main`                         |
| [minio-loong64](https://github.com/kubernetes-loong64/minio-loong64)                                       | MinIO 服务器和 mc (MinIO Client) loong64 移植               | `loong64-2026-02-12T20-18-48Z` |
| [moby-loong64](https://github.com/kubernetes-loong64/moby-loong64)                                         | Docker (moby) loong64 移植                              | `loong64-docker-v29.6.2`       |
| [nexus-loong64](https://github.com/kubernetes-loong64/nexus-loong64)                                       | Nexus Repository Manager LoongArch64 容器镜像             | `loong64-3.94.0`               |
| [node-loong64](https://github.com/kubernetes-loong64/node-loong64)                                         | Node.js LoongArch64 容器镜像                              | `loong64-v24.18.0`             |
| [nginx-loong64](https://github.com/kubernetes-loong64/nginx-loong64)                                       | Nginx LoongArch64 容器镜像                                | `loong64-1.31.3`               |
| [ossutil-loong64](https://github.com/kubernetes-loong64/ossutil-loong64)                                   | ossutil（阿里云 OSS 命令行工具）loong64 移植                      | `loong64-v1.7.19`              |
| [plugins-loong64](https://github.com/kubernetes-loong64/plugins-loong64)                                   | Kubernetes 网络插件 loong64 移植                            | `loong64-v1.9.1`               |
| [redis-loong64](https://github.com/kubernetes-loong64/redis-loong64)                                       | Redis 容器镜像 loong64 移植                                 | `loong64-v8.8.0`               |
| [release-loong64](https://github.com/kubernetes-loong64/release-loong64)                                   | 发布工具和制品 loong64 移植                                    | `loong64-v0.21.1`              |
| [reprepro](https://github.com/kubernetes-loong64/reprepro)                                                 | reprepro 容器镜像，用于生成 deb 仓库元数据（amd64、arm64、loong64）     | `reprepro-5.5.1`               |
| [runc-loong64](https://github.com/kubernetes-loong64/runc-loong64)                                         | 容器运行时 (runc) loong64 移植                               | `loong64-v1.5.1`               |
| [runner-tools-base-images-loong64](https://github.com/kubernetes-loong64/runner-tools-base-images-loong64) | gitlab-runner-helper 基础镜像 loong64 移植                  | `loong64-v0.0.47`              |
| [template-loong64](https://github.com/kubernetes-loong64/template-loong64)                                 | 仓库模板                                                  | `main`                         |
| [tini-loong64](https://github.com/kubernetes-loong64/tini-loong64)                                         | 容器 init (tini) loong64 移植                             | `loong64-master`               |
| [valkey-loong64](https://github.com/kubernetes-loong64/valkey-loong64)                                     | Valkey 容器镜像 loong64 移植                                | `loong64-9.1.0`                |

## 快速开始

### 克隆仓库及所有子模块

```bash
git clone --recurse-submodules https://github.com/kubernetes-loong64/submodule-loong64.git
cd submodule-loong64
```

### 切换到工作分支

每个组件都有各自的 loong64 工作分支。使用 Makefile 可一次性切换所有子模块：

```bash
# 将所有子模块切换到 loong64 工作分支
make checkout-all-work

# 将所有子模块（及主仓库）切换回 main 分支
make checkout-all-main
```

## Makefile 参考

| 目标                       | 说明                            |
|--------------------------|-------------------------------|
| `make checkout-all-main` | 将主仓库和所有子模块检出到 `main` 分支       |
| `make checkout-all-work` | 将主仓库和每个子模块检出到对应的 loong64 工作分支 |

## 参与贡献

欢迎贡献。各组件遵循 standard Git 工作流：

1. 在对应的子模块目录中工作
2. 使用 [gitmoji](AGENTS.md) shortcode 作为提交信息前缀
3. 每个提交必须包含 `Signed-off-by:` 行（DCO）

详细提交规范请参阅 [AGENTS.md](AGENTS.md)。

## 文档

- [LoongArch64 (loong64) 龙芯架构：从 GitHub 安装 github.com/kubernetes-loong64 编译的 containerd、docker 二进制](https://xuxiaowei.io/t/754)
- [LoongArch64 (loong64) 龙芯架构：从 GitHub 安装 github.com/kubernetes-loong64 编译的 containerd、docker rpm 包](https://xuxiaowei.io/t/811)
- [LoongArch64 (loong64) 龙芯架构：从 rpm 仓库 安装 github.com/kubernetes-loong64 编译的 containerd、docker rpm 包](https://xuxiaowei.io/t/812)
- [LoongArch64 (loong64) 龙芯架构：安装 Kubernetes](https://xuxiaowei.io/t/858)
- [视频：龙芯 3B6000 安装 Kubernetes 1.30.1：基于 containerd 2.3.1](https://www.bilibili.com/video/BV1VK7H68EtF/)

## 许可证

[Apache License 2.0](LICENSE)
