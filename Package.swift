// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-peekable-iterator",
    products: [
        .library(
            name: "PeekableIterator",
            targets: ["PeekableIterator"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "PeekableIterator",
            dependencies: []),
        .testTarget(
            name: "PeekableIteratorTests",
            dependencies: ["PeekableIterator"],
            path: "Tests"),
    ]
)
