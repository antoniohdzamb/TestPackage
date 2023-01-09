// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestPackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TestPackage",
            targets: ["TestPackage", "SimpleMath"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TestPackage",
            dependencies: []),
        .binaryTarget(name: "SimpleMath", url: "https://github.com/antoniohdzamb/SimpleMathFramework/raw/main/SimpleMath.xcframework.zip", checksum: "cb4f6a4fbfc890665fe6959ec610365f9c04597ed9acc8e37ad665190114cd0b"),
        .testTarget(
            name: "TestPackageTests",
            dependencies: ["TestPackage"]),
    ]
)
