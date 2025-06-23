// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "SweetLlama",
    platforms: [
        .macOS(.v12),
        .macCatalyst(.v15),
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "SweetLlama",
            targets: ["SweetLlama"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ggerganov/llama.cpp", branch: "master"),
    ],
    targets: [
        .target(
            name: "SweetLlama",
            dependencies: [
                .product(name: "llama", package: "llama.cpp")
            ]),
    ]
)
