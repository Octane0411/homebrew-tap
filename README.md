# Octane0411 Homebrew Tap

Homebrew tap for [Open Island](https://github.com/Octane0411/open-vibe-island) and other Octane0411 projects.

## Usage

Install directly:

```sh
brew install --cask octane0411/tap/openisland
```

Or tap first, then install:

```sh
brew tap octane0411/tap
brew install --cask openisland
```

Upgrade:

```sh
brew upgrade --cask openisland
```

Uninstall (with user data cleanup):

```sh
brew uninstall --zap --cask openisland
```

## Available Casks

| Cask | Description |
| --- | --- |
| [`openisland`](Casks/openisland.rb) | Native macOS companion app for AI coding agents |

## Notes

- Open Island has a built-in Sparkle auto-updater. The cask declares `auto_updates true`, so Homebrew won't fight with Sparkle — `brew upgrade` is still safe and will pull the latest pinned version.
- This tap is automatically updated by the upstream release workflow whenever a new `v*` tag ships.
