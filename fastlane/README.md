# Fastlane Documentation

----

## Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

## Available Actions

### iOS

#### Prebuild

```sh
[bundle exec] fastlane ios prebuild
```

#### Set version number

```sh
[bundle exec] fastlane ios set_version
```

#### Bump version number

```sh
[bundle exec] fastlane ios bump_version
```

#### Run Tests

```sh
[bundle exec] fastlane ios tests
```

#### Build Carthage

```sh
[bundle exec] fastlane ios build_carthage
```

#### Lint Cocoapods

```sh
[bundle exec] fastlane ios lint_cocoapods
```

#### Push Cocoapods

```sh
[bundle exec] fastlane ios push_cocoapods
```

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
