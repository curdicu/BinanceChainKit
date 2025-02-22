// swift-tools-version:5.5

import PackageDescription

let package = Package(
        name: "BinanceChainKit",
        platforms: [
            .iOS(.v13),
        ],
        products: [
            .library(
                    name: "BinanceChainKit",
                    targets: ["BinanceChainKit"]
            ),
        ],
        dependencies: [
            .package(url: "https://github.com/groue/GRDB.swift.git", .upToNextMajor(from: "6.0.0")),
            .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
            .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "4.0.0"),
            .package(url: "https://github.com/curdicu/HdWalletKit.git", .branch("main")),
            .package(url: "https://github.com/curdicu/HsCryptoKit.git", .branch("main")),
            .package(url: "https://github.com/curdicu/HsExtensions.git", .branch("main")),
            .package(url: "https://github.com/curdicu/HsToolKit.git", .branch("main")),
        ],
        targets: [
            .target(
                    name: "BinanceChainKit",
                    dependencies: [
                        .product(name: "GRDB", package: "GRDB.swift"),
                        .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                        "SwiftyJSON",
                        .product(name: "HdWalletKit", package: "HdWalletKit"),
                        .product(name: "HsCryptoKit", package: "HsCryptoKit"),
                        .product(name: "HsExtensions", package: "HsExtensions"),
                        .product(name: "HsToolKit", package: "HsToolKit"),
                    ]
            )
        ]
)
