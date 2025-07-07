// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version: 6.0
import PackageDescription

// version 10000.5.0

let package = Package(
    name: "AnyManagerMediation",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyManagerMediation",
            targets: ["AnyManagerMediation"]),
    ],

    targets: [
        .binaryTarget(
            name: "AnyManagerMediation",
            url: "https://github.com/AnyMindG/AnyManagerMediation/releases/download/10000.5.0/AnyManagerMediation.zip",
            checksum: "3881725bedb103e02e6a93c2d61117e53c427eb2373e9f7f084e87a1d31026b2"
        ),
        .testTarget(
            name: "AnyManagerMediationTests",
            dependencies: ["AnyManagerMediation"]
        ),
    ]
)

