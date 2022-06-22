// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HayaletSevgilim",
    products: [
        .library(
            name: "HayaletSevgilim",
            targets: ["HayaletSevgilim"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "HayaletSevgilim",
            dependencies: []),
        .testTarget(
            name: "HayaletSevgilimTests",
            dependencies: ["HayaletSevgilim"]),
    ]
)
