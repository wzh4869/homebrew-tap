# Agent Note: AppPorts distribution through a project tap

Status: implemented

## Problem

AppPorts users requested Homebrew installation and upgrades. The official cask submission was closed because the release did not pass Gatekeeper. The Homebrew maintainer suggested publishing it in a project tap. [Homebrew review](https://github.com/Homebrew/homebrew-cask/pull/252819#issuecomment-4018414886)

## Decision

The cask installs the application from a versioned upstream release DMG with a pinned SHA-256. It declares the built-in updater and leaves macOS first-launch approval to the user. Its only installation artifact is the app bundle.

## Alternatives considered

Listing in the official cask repository would make the package discoverable by its short name. This can be revisited when the upstream distribution satisfies the official Gatekeeper checks. The earlier cask also proposed removing the AppPorts Application Support directory on zap. This directory contains container mount records that users may need after reinstalling AppPorts.

## Consequences

A stable release requires a matching cask update before Homebrew can offer the new version. Uninstalling the cask preserves migration records and files on external storage. Users who want their data back on the Mac restore it with AppPorts.
