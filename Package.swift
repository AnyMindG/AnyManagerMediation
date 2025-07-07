// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version: 6.0
import PackageDescription

// version 2.2.1

let package = Package(
    name: "AnyManagerMediation",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyManagerMediation",
            targets: ["AnyManagerMediation"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.13.0"),
    ],
    targets: [
        .binaryTarget(
            name: "AnyManagerMediation",
            url: "https://github.com/AnyMindG/AnyManagerMediation/releases/download/2.2.1/AnyManagerMediation.zip",
            checksum: "887058455e2324c317ece4534e1e8e0452481621b86e3d860787a03af30ec815"
        ),
        .testTarget(
            name: "AnyManagerMediationTests",
            dependencies: ["AnyManagerMediation"]
        ),
    ]
)

