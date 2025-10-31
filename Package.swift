// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "DBConfigurationProvider",
    platforms: [.macOS(.v13)],
    products: [
        .library(name: "DBConfigurationProvider", targets: ["DBConfigurationProvider"]),
        .library(name: "DBConfigurationProviderLive", targets: ["DBConfigurationProviderLive"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.99.3"),
        .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.3.0"),
    ],
    targets: [
        .target(
            name: "DBConfigurationProvider",
            dependencies: [
                .product(name: "Dependencies", package: "swift-dependencies"),
            ]
        ),
        .target(
            name: "DBConfigurationProviderLive",
            dependencies: [
                "DBConfigurationProvider",
                .product(name: "Vapor", package: "vapor"),
                .product(name: "Dependencies", package: "swift-dependencies"),
            ]
        ),
        .testTarget(
            name: "vapor-db-config-providerTests",
            dependencies: ["DBConfigurationProvider"]
        ),
    ]
)
