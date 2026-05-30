# homebrew-brew-browser

Homebrew tap for [**brew-browser**](https://github.com/msitarzewski/brew-browser) — a native macOS GUI for Homebrew.

## Install

```sh
brew tap msitarzewski/brew-browser
brew install --cask brew-browser
```

That installs the signed + notarized `.dmg` from the [brew-browser releases](https://github.com/msitarzewski/brew-browser/releases) — same binary as the manual download, no Gatekeeper warning.

Apple Silicon, macOS 13 (Ventura) or newer.

## Update

```sh
brew upgrade --cask brew-browser
```

## Uninstall

```sh
brew uninstall --cask brew-browser           # remove the app
brew uninstall --zap --cask brew-browser     # also remove settings, caches, keychain entry
```

## What's here

- `Casks/brew-browser.rb` — the cask. Installs the prebuilt, signed, notarized app. **This is the install path you want.**

## About brew-browser

Browse, search, install, upgrade, and snapshot Homebrew packages from a native desktop app. Trending, opt-in vulnerability scanning, services, storage breakdown. MIT licensed, no telemetry, no account. Full details at [github.com/msitarzewski/brew-browser](https://github.com/msitarzewski/brew-browser).
