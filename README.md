# FunnyLogger

[![Swift 2.2](https://img.shields.io/badge/Swift-2.2-orange.svg?style=flat)](https://swift.org/)
[![Platforms OS X | iOS | tvOS | watchOS](https://img.shields.io/badge/Platforms-OS%20X%20%7C%20iOS%20%7C%20tvOS%20%7C%20watchOS-lightgray.svg?style=flat)](https://swift.org/)
[![License MIT](https://img.shields.io/badge/License-MIT-lightgrey.svg?style=flat)](https://github.com/GuiminChu/FunnyLogger/blob/master/LICENSE)

[![CocoaPods Version](https://img.shields.io/cocoapods/v/FunnyLoger.svg?style=flat)](https://cocoapods.org/pods/FunnyLogger)

A simple, colorful logger for Xcode.

## Requirements

* You need to install [**XcodeColors**](https://github.com/robbiehanson/XcodeColors) plugin to enable color in the Xcode console, otherwise you will see some messed-up code.

* If you want to open the specific file and highlight the line when you click on the hyperlink in the console, you need to install [**KZLinkedConsole**](https://github.com/krzysztofzablocki/KZLinkedConsole) plugin.

*Suggestion*：The best way of installing plugin is by [**Alcatraz**](http://alcatraz.io/). Install Alcatraz followed by the instruction, restart your Xcode and press ⇧⌘9. You can find XcodeColors and KZLinkedConsole in the list and click the icon on left to install.

## Installation

#### CocoaPods
You can use [Cocoapods](http://cocoapods.org/) to install `FunnyLogger`by adding it to your `Podfile`:

```ruby
target 'MyApp' do
	pod 'FunnyLogger'
end
```

#### Manually

Clone the repo and add `FunnyLogger.swift` to your project.

## Usage

First:

```swift
import FunnyLogger
```
And, Use directly:

```swift
FunnyLogger.v("Normal")
FunnyLogger.d("Normal")
FunnyLogger.i("Normal")
FunnyLogger.w("Normal")
FunnyLogger.e("Normal")
        
FunnyLogger.v(.Flower, message: "Flower")
FunnyLogger.d(.Flower, message: "Flower")
FunnyLogger.i(.Flower, message: "Flower")
FunnyLogger.w(.Flower, message: "Flower")
FunnyLogger.e(.Flower, message: "Flower")
```

## License

FunnyLogger is released under the MIT license. See LICENSE for details.
