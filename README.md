# Homebrew tap for AppPorts

Install [AppPorts](https://github.com/wzh4869/AppPorts) on macOS with Homebrew.

```sh
brew install --cask wzh4869/tap/appports
```

AppPorts supports Apple silicon and Intel Macs running macOS 12 or later. The tap downloads the project's release DMG and verifies its SHA-256 checksum. macOS may block the first launch because the app lacks Apple notarization. See the [AppPorts installation guide](https://github.com/wzh4869/AppPorts#readme) if that happens.

### Upgrade

Finish any migration and quit AppPorts before upgrading.

```sh
brew update
brew upgrade --cask wzh4869/tap/appports
```

### Uninstall

```sh
brew uninstall --cask wzh4869/tap/appports
```

Uninstalling removes the application. Migrated files stay on the external drive and AppPorts keeps its migration records. To move files back to your Mac, restore them in AppPorts before uninstalling.

### Maintaining the cask

For each stable AppPorts release, update the version and SHA-256 in [Casks/appports.rb](Casks/appports.rb) to match the DMG on [GitHub Releases](https://github.com/wzh4869/AppPorts/releases).
