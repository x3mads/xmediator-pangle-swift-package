// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorPangle",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorPangle", targets: ["XMediatorPangleTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/bytedance/AdsGlobalPackage.git", exact: "8.4.0-release.7"),
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
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorPangle/XMediatorPangle-8.4.0.7.0.zip",
            checksum: "c69e8cd6c18f031d50c90aa627a3911eb7a1a502784e5d91fd8af83c45840c1a"
        ),
    ]
)
