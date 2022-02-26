// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "PMKHomeKit",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(name: "PMKHomeKit", targets: ["PMKHomeKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "6.16.3"),
    ],
    targets: [
        .target(name: "PMKHomeKit", dependencies: ["PromiseKit"], path: "Sources"),
        .testTarget(name: "PMKHomeKitTests", path: "Tests")
    ]
)
