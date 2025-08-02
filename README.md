# AccessibilityScrollable

[![Swift Version](https://img.shields.io/badge/Swift-5.5+-orange.svg)](https://swift.org/)
[![SPM](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)](https://swift.org/package-manager/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Swift Tests](https://github.com/inekipelov/swiftui-accessibility-scroll/actions/workflows/swift.yml/badge.svg)](https://github.com/inekipelov/swiftui-accessibility-scroll/actions/workflows/swift.yml)  
[![iOS](https://img.shields.io/badge/iOS-15.0+-blue.svg)](https://developer.apple.com/ios/)
[![macOS](https://img.shields.io/badge/macOS-12+-white.svg)](https://developer.apple.com/macos/)
[![tvOS](https://img.shields.io/badge/tvOS-15.0+-black.svg)](https://developer.apple.com/tvos/)
[![watchOS](https://img.shields.io/badge/watchOS-8.0+-orange.svg)](https://developer.apple.com/watchos/)

A lightweight Swift Package that adds a convenient SwiftUI View extension to automatically wrap content in a ScrollView when the user’s Dynamic Type Size exceeds a specified threshold.

## Usage

```swift
import AccessibilityScrollable

struct ContentView: View {
    var body: some View {
        VStack {
            // Your content
        }
        .accessibilityScrollable(threshold: .accessibility1)
    }
}
```

## Installation
Add the package to your dependencies in `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/inekipelov/swiftui-accessibility-scroll.git", from: "0.1.0")
]
```
