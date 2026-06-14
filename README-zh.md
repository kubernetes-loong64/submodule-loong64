# Kubernetes Loong64 — 子模块

<p align="center"><a href="README.md">English</a> | <a href="README-zh.md">中文</a></p>

[kubernetes-loong64](https://github.com/kubernetes-loong64) 的 monorepo 管理仓库，致力于将 Kubernetes 及其核心组件移植到
**LoongArch (loong64)** 架构。

本仓库通过 git submodule 聚合所有组件仓库，方便统一克隆、管理分支和协调各组件发布。

## 组件列表

| 子模块                                                                            | 说明                            | 工作分支                     |
|--------------------------------------------------------------------------------|-------------------------------|--------------------------|
| [kubernetes-loong64](https://github.com/kubernetes-loong64/kubernetes-loong64) | Kubernetes 主线的 loong64 移植     | `loong64-v1.36.1`        |
| [cli-loong64](https://github.com/kubernetes-loong64/cli-loong64)               | Docker CLI loong64 移植         | `loong64-v29.5.1`        |
| [containerd-loong64](https://github.com/kubernetes-loong64/containerd-loong64) | 容器运行时 (containerd) loong64 移植 | `loong64-v2.3.1`         |
| [coredns-loong64](https://github.com/kubernetes-loong64/coredns-loong64)       | 集群 DNS (CoreDNS) loong64 移植   | `loong64-v1.14.2`        |
| [cri-tools-loong64](https://github.com/kubernetes-loong64/cri-tools-loong64)   | CRI 命令行工具 loong64 移植          | `loong64-v1.36.0`        |
| [etcd-loong64](https://github.com/kubernetes-loong64/etcd-loong64)             | 分布式键值存储 (etcd) loong64 移植     | `loong64-v3.6.8`         |
| [moby-loong64](https://github.com/kubernetes-loong64/moby-loong64)             | Docker (moby) loong64 移植      | `loong64-docker-v29.5.1` |
| [plugins-loong64](https://github.com/kubernetes-loong64/plugins-loong64)       | Kubernetes 网络插件 loong64 移植    | `loong64-v1.9.1`         |
| [release-loong64](https://github.com/kubernetes-loong64/release-loong64)       | 发布工具和制品 loong64 移植            | `loong64-v0.21.1`        |
| [runc-loong64](https://github.com/kubernetes-loong64/runc-loong64)             | 容器运行时 (runc) loong64 移植       | `loong64-v1.4.2`         |
| [template-loong64](https://github.com/kubernetes-loong64/template-loong64)     | 仓库模板                          | `main`                   |
| [tini-loong64](https://github.com/kubernetes-loong64/tini-loong64)             | 容器 init (tini) loong64 移植     | `loong64-master`         |
| [jdk-loong64](https://github.com/kubernetes-loong64/jdk-loong64)               | JDK (Java 开发工具包) loong64 移植   | `main`                   |
| [.github](https://github.com/kubernetes-loong64/.github)                       | 共享 GitHub 配置                  | `main`                   |

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

## 许可证

[Apache License 2.0](LICENSE)
