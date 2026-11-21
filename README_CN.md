# AppPorts 的 Homebrew 安装源

[English](README.md)

在 Mac 上通过 Homebrew 安装 [AppPorts](https://github.com/wzh4869/AppPorts/blob/main/README_CN.md)。

```sh
brew install --cask wzh4869/tap/appports
```

如果你之前手动安装过 AppPorts，Homebrew 检测到已有的 `/Applications/AppPorts.app` 时会停止安装。原来的 AppPorts 可以继续使用，也可以通过应用内更新升级。

AppPorts 支持运行 macOS 12 或更高版本的 Apple 芯片和 Intel 芯片 Mac。Homebrew 会从项目的 GitHub Releases 下载 DMG，并校验 SHA-256。当前版本尚未通过 Apple 公证，首次打开时可能被 macOS 拦截。遇到这种情况，请参阅 [AppPorts 安装说明](https://github.com/wzh4869/AppPorts/blob/main/README_CN.md)。

### 升级

如果通过 Homebrew 安装了 AppPorts，请先等正在进行的迁移完成，再退出 AppPorts 并运行以下命令。

```sh
brew update
brew upgrade --cask wzh4869/tap/appports
```

### 卸载

```sh
brew uninstall --cask wzh4869/tap/appports
```

卸载后，已迁移的文件仍在外置盘上，AppPorts 的迁移记录也会保留。如果希望把文件迁回 Mac，请先在 AppPorts 中还原，再卸载应用。

### 维护安装源

每次发布 AppPorts 稳定版后，将 [Casks/appports.rb](Casks/appports.rb) 中的 `version` 和 `sha256` 更新为该版本的标签和 DMG 的 SHA-256 校验值。两者都可以在 [GitHub Releases](https://github.com/wzh4869/AppPorts/releases) 中核对。
