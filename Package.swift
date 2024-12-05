// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SixtySix",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SixtySix",
            targets: ["SixtySix"]),
    ],
dependencies: [
    .package(url: "https://github.com/SwiftGen/SwiftGenPlugin", from: "6.6.2")
  ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SixtySix",
plugins: [
        .plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin")
      ]),
        .testTarget(
            name: "SixtySixTests",
            dependencies: ["SixtySix"]
        ),
    ]
)
