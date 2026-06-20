# homebrew-mytab

A [Homebrew](https://brew.sh) tap for installing my apps.

## HanhCute

Cross-platform desktop speech-to-text application. macOS Apple Silicon only.

### Install

```sh
brew tap ductm104/mytab
brew install --cask hanhcute
```

### Upgrade

```sh
brew update
brew upgrade --cask hanhcute
```

### Uninstall

```sh
brew uninstall --cask hanhcute
brew untap ductm104/mytab
```

## Updating the HanhCute Cask

When a new version of HanhCute is released:

1. Update `version` in `Casks/hanhcute.rb`.
2. Download the new DMG and compute its SHA256:
   ```sh
   curl -OL https://github.com/ductm104/Handy/releases/download/v<version>/HanhCute_<version>_aarch64.dmg
   shasum -a 256 HanhCute_<version>_aarch64.dmg
   ```
3. Update `sha256` in `Casks/hanhcute.rb`.
4. Commit and push:
   ```sh
   git add Casks/hanhcute.rb
   git commit -m "hanhcute v<version>"
   git push
   ```

## Repository Layout

- `Casks/` — Homebrew casks for macOS `.app` applications
- `Formula/` — Homebrew formulas for CLI tools
