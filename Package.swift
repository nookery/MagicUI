// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MagicUI",
    platforms: [
        .macOS(.v14),
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "MagicUI",
            targets: ["MagicUI"]
        )
    ],
    targets: [
        .target(
            name: "MagicUI",
            resources: [.process("Icons.xcassets")]
        ),
        .testTarget(
            name: "MagicUITests",
            dependencies: ["MagicUI"]
        )
    ]
)
