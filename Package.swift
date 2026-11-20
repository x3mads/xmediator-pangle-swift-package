// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorPangle",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorPangle", targets: ["XMediatorPangleTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "8.4.0-release.8"),
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
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorPangle/XMediatorPangle-8.4.0.8.0.zip",
            checksum: "043cd3a464e5a6a817d14075affbf91f9ae1feca9b9cfe267195ceff4fbae242"
        ),
    ]
)
