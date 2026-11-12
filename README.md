# GitTree Homebrew Tap

Install the signed, notarized macOS build with Homebrew:

```sh
brew tap git-tree-app/tap
brew install --cask open-git-tree
```

Update it later with:

```sh
brew upgrade --cask open-git-tree
```

The cask downloads the versioned DMG from the [GitTree releases](https://github.com/git-tree-app/gittree/releases) and verifies its SHA-256 checksum.
