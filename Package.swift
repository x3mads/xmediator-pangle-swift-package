// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorPangle",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorPangle", targets: ["XMediatorPangleTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "8.3.0-release.9"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.145.0")),
    ],
    targets: [
        .target(
            name: "XMediatorPangleTarget",
            dependencies: [
                .target(name: "XMediatorPangle"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage"),
            ],
            path: "XMediatorPangleTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorPangle",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorPangle/XMediatorPangle-8.3.0.9.0.zip",
            checksum: "e8328f6a60e16aefe579a5ed5545bc7761030acabb2d88875a519660c03f1c19"
        ),
    ]
)
