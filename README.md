[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg)](https://github.com/gumob/PunycodeSwift)
[![Version](http://img.shields.io/cocoapods/v/Punycode.svg)](http://cocoadocs.org/docsets/Punycode)
[![Platform](http://img.shields.io/cocoapods/p/Punycode.svg)](http://cocoadocs.org/docsets/Punycode)
[![Build Status](https://travis-ci.com/gumob/PunycodeSwift.svg?branch=master)](https://travis-ci.com/gumob/PunycodeSwift)
[![codecov](https://codecov.io/gh/gumob/PunycodeSwift/branch/master/graph/badge.svg)](https://codecov.io/gh/gumob/PunycodeSwift)
![Language](https://img.shields.io/badge/Language-Swift%204.2-orange.svg)
![Packagist](https://img.shields.io/packagist/l/doctrine/orm.svg)

⚠️ This repository is no longer maintained. Please use [`PunycodeSwift`](https://github.com/gumob/PunycodeSwift) instead.

# PunycodeSwift
<code>PunycodeSwift</code> is a pure Swift library to allows you to encode and decode `punycoded` strings by using String extension.

## What is Punycode?

Punycode is a representation of Unicode with the limited ASCII character subset used for Internet host names. Using Punycode, host names containing Unicode characters are transcoded to a subset of ASCII consisting of letters, digits, and hyphen, which is called the Letter-Digit-Hyphen (LDH) subset. For example, München (German name for Munich) is encoded as Mnchen-3ya. [(Wikipedia)](https://en.wikipedia.org/wiki/Punycode)

## Requirements

- iOS 9.3 or later
- macOS 10.12 or later
- tvOS 12.0 or later
- Swift 4.2

<small>* No plans to support tvOS 11 or earlier for now</small>


## Installation

### Carthage

Add the following to your `Cartfile` and follow [these instructions](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application).

```
github "gumob/PunycodeSwift"
```

### CocoaPods

To integrate Punycode into your project, add the following to your `Podfile`.

```ruby
platform :ios, '9.3'
use_frameworks!

pod 'Punycode'
```

## Usage

Encode and decode IDNA:

```
import Punycode

var sushi: String = "寿司"

sushi = sushi.idnaEncoded!
print(sushi)  // xn--sprr0q

sushi = sushi.idnaDecoded!
print(sushi)  // "寿司"
```

Encode and decode Punycode directly:

```
import Punycode

var sushi: String = "寿司"

sushi = sushi.punycodeEncoded!
print(sushi)  // sprr0q

sushi = sushi.punycodeDecoded!
print(sushi)  // "寿司"
```

## Copyright

Punycode is released under MIT license, which means you can modify it, redistribute it or use it however you like.
