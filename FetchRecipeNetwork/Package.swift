// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FetchRecipeNetwork",
    platforms: [.iOS(.v17)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FetchRecipeNetwork",
            targets: ["FetchRecipeNetwork"]
        ),
    ],
    dependencies: [
        .package(path: "../FetchRecipeCore"),
        .package(path: "../FetchRecipeDomain"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FetchRecipeNetwork",
            dependencies: [
                .product(name: "FetchRecipeCore", package: "FetchRecipeCore"),
                .product(name: "FetchRecipeDomain", package: "FetchRecipeDomain"),
            ]
        ),
        .testTarget(
            name: "FetchRecipeNetworkTests",
            dependencies: ["FetchRecipeNetwork"]
        ),
    ]
)
