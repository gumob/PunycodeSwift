// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Punycode",
    products: [
        .library(
            name: "Punycode",
            targets: ["Punycode"])
    ],
    targets: [
        .target(
            name: "Punycode",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "PunycodeSwiftTests",
            dependencies: ["Punycode"],
            path: "Tests")
    ]
)
