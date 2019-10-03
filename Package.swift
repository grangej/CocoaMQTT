// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CocoaMQTT",
    platforms: [
        .macOS(.v10_14),
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "CocoaMQTT",
            targets: ["CocoaMQTT"]),
    ],
    dependencies: [
        .package(url: "https://github.com/grangej/CocoaAsyncSocket.git", from: "7.7.0"),
    ],
    targets: [
        .target(
            name: "CocoaMQTT",
            dependencies: ["CocoaAsyncSocket"],
            path: "Source"),
    ]
)
