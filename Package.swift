// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnyManagerMediation",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AnyManagerMediation",
            targets: ["AnyManagerMediation"]),
    ],
    dependencies: [
           .package(url: "https://github.com/AnyMindG/InMobiAdSDK.git", from: "1.1.0"),
           .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.13.0"),
       ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AnyManagerMediation",
            dependencies: [
                        .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                        .product(name: "InMobiAdSDK", package: "InMobiAdSDK"),
                    ],
            linkerSettings: [
                            .linkedFramework("WebKit"),
                            .linkedFramework("AdSupport"),
                            .linkedFramework("AVFoundation"),
                            .linkedFramework("CoreGraphics"),
                            .linkedFramework("CoreMedia"),
                            .linkedFramework("CoreTelephony"),
                            .linkedFramework("StoreKit"),
                            .linkedFramework("SystemConfiguration"),
                            .linkedFramework("UIKit"),
                            .linkedFramework("AudioToolbox"),
                            .linkedFramework("CFNetwork"),
                            .linkedFramework("MediaPlayer"),
                            .linkedFramework("QuartzCore"),
                            
            ]
        
        ),
        .testTarget(
            name: "AnyManagerMediationTests",
            dependencies: ["AnyManagerMediation"]
        ),
    ]
)
