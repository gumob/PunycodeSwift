fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)


# fuzzy command

Just run `./fastlane.sh` on the project root directory.

```sh
./fastlane.sh
```

# Available Actions

## iOS

### ios prebuild

```sh
bundle exec fastlane ios prebuild
```

Prebuild

### ios set_version

```sh
bundle exec fastlane ios set_version
```

Set version number

### ios bump_version

```sh
bundle exec fastlane ios bump_version
```

Bump version number

### ios tests

```sh
bundle exec fastlane ios tests
```

Run Tests

### ios build_carthage

```sh
bundle exec fastlane ios build_carthage
```

Build Carthage

### ios lint_cocoapods

```sh
bundle exec fastlane ios lint_cocoapods
```

Lint Cocoapods

### ios push_cocoapods

```sh
bundle exec fastlane ios push_cocoapods
```

Push Cocoapods

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
