// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swiftui-accessibility-scroll",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(name: "AccessibilityScrollable", targets: ["AccessibilityScrollable"]),
    ],
    targets: [
        .target(name: "AccessibilityScrollable", dependencies: [], path: "Sources"),
        .testTarget(name: "AccessibilityScrollableTests", dependencies: ["AccessibilityScrollable"], path: "Tests"),
    ]
)
