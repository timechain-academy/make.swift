// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "my-app",
    dependencies: [
        .package(url: "https://github.com/RandyMcMillan/my-library.git", .branch("master")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "my-app",
            dependencies: [
             .product(name: "my-library", package: "my-library"),

            ]),
        .testTarget(
            name: "my-appTests",
            dependencies: ["my-app"]),
    ]
)
