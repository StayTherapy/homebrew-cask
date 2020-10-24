# homebrew-cask-patch
**Homebrew** is great tool for managing  macOS package, and **cask** for managing GUI macOS applications. With Homebrew we can easy install/uninstall applications from official places.

When we want to install pre-release App but it does't exist in the homebrew cask list , `tap` this resource if it exists in the `Casks` folder.

## Catalog

* Squirrel-0.14.0+git118aee6
  Reference: rime/squirrel-[Issues-456](https://github.com/rime/squirrel/issues/453)

## Usage

```bash
brew tap StayTherapy/cask
brew cask install StayTherapy/cask/{application}
```

## Tips

For Squirrel, it is recommended to delete release verison to avoid conflicts.

```bash
# Uninstall release version.User configuration whill be keep in /Users/{User}/Library/Rime
brew cask uninstall squirrel
# Install testing version.
brew tap StayTherapy/cask
brew cask install StayTherapy/cask/squirrel-beta
```

## License 

Code is under the [BSD 2 Clause (NetBSD) license](LICENSE)