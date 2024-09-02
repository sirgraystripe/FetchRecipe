// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FetchRecipeUI",
    platforms: [.iOS(.v17)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FetchRecipeUI",
            targets: ["FetchRecipeUI"]
        ),
    ],
    dependencies: [
        .package(path: "../../FetchRecipeCore"),
        .package(path: "../../FetchRecipeDomain"),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "7.12.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FetchRecipeUI",
            dependencies: [
                .product(name: "FetchRecipeCore", package: "FetchRecipeCore"),
                .product(name: "FetchRecipeDomain", package: "FetchRecipeDomain"),
                .product(name: "Kingfisher", package: "Kingfisher"),
            ]
        ),
        .testTarget(
            name: "FetchRecipeUITests",
            dependencies: ["FetchRecipeUI"]
        ),
    ]
)
